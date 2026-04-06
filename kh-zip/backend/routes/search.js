/**
 * routes/search.js
 *
 * GET /api/search?q=<query>&limit=<n>
 *
 * Handles: Khmer script, English text, postal codes (5 or 6 digit),
 *          misspellings, and partial matches.
 *
 * 5-strategy UNION ranked by best_score — target <200ms via GIN indexes.
 *
 * Dataset facts:
 *   - 1,887 records: 25 provinces, 210 districts, 1,652 communes
 *   - Postal codes: 5-digit for provinces 1–9, 6-digit for 10–25
 *   - Max code depth: 3 levels (e.g. "12.1.5")
 */
const { Router } = require('express');
const pool = require('../db/pool');

const router = Router();

// Map code depth → human-readable type
function resolveType(code) {
    if (!code) return 'unknown';
    const depth = code.split('.').length;
    const map = ['province', 'district', 'commune'];
    return map[depth - 1] || 'commune';
}

// Sanitise query for to_tsquery: keep alphanumeric + Khmer Unicode block
function toTsQuery(q) {
    const clean = q.replace(/[^\w\u1780-\u17FF\u17E0-\u17E9 ]/g, '').trim();
    if (!clean) return null;
    // each word becomes a prefix term: "Banteay Neang" → "Banteay:* & Neang:*"
    return clean.split(/\s+/).map(w => `${w}:*`).join(' & ');
}

router.get('/', async (req, res) => {
    const start = Date.now();
    const q = (req.query.q || '').trim();
    const limit = Math.min(parseInt(req.query.limit) || 10, 50);

    if (!q) return res.json({ results: [], took_ms: 0, query: '' });

    const tsq = toTsQuery(q);

    try {
        const { rows } = await pool.query(
            `
      WITH ranked AS (

        -- ① Exact postal code (highest priority — instant lookup)
        SELECT code, name_kh, name_en, postal_code,
               1.0::float         AS score,
               'exact_postal'     AS match_type
        FROM locations
        WHERE postal_code = $1

        UNION ALL

        -- ② Postal code prefix (e.g. "100" matches all 100xxx codes)
        SELECT code, name_kh, name_en, postal_code,
               0.92::float        AS score,
               'prefix_postal'    AS match_type
        FROM locations
        WHERE postal_code LIKE $2
          AND postal_code <> $1

        UNION ALL

        -- ③ Full-text search on name_en + postal_code (GIN — very fast)
        --    Handles partial word matching and English keyword search
        SELECT l.code, l.name_kh, l.name_en, l.postal_code,
               ts_rank(l.fts_vector, q.query)::float AS score,
               'fulltext'         AS match_type
        FROM   locations l,
               to_tsquery('simple', $3) q(query)
        WHERE  $3 IS NOT NULL
          AND  l.fts_vector @@ q.query

        UNION ALL

        -- ④ Trigram fuzzy on English name (tolerates misspellings)
        --    e.g. "bantey neang" → "Banteay Neang Commune"
        SELECT code, name_kh, name_en, postal_code,
               similarity(name_en, $1)::float AS score,
               'fuzzy_en'         AS match_type
        FROM   locations
        WHERE  name_en % $1

        UNION ALL

        -- ⑤ Trigram fuzzy on Khmer name (native script queries)
        SELECT code, name_kh, name_en, postal_code,
               similarity(name_kh, $1)::float AS score,
               'fuzzy_kh'         AS match_type
        FROM   locations
        WHERE  name_kh % $1

      ),
      -- Deduplicate: keep each code once with its highest score
      deduped AS (
        SELECT DISTINCT ON (code)
          code, name_kh, name_en, postal_code,
          MAX(score) OVER (PARTITION BY code) AS best_score,
          match_type
        FROM ranked
        ORDER BY code, score DESC
      )
      SELECT *
      FROM   deduped
      ORDER  BY best_score DESC,
                -- Prefer broader matches (province < district < commune)
                array_length(string_to_array(code, '.'), 1) ASC
      LIMIT  $4;
      `,
            [
                q,            // $1 — exact match & trigram base
                q + '%',      // $2 — postal prefix
                tsq,          // $3 — tsquery (null-safe: skipped if toTsQuery returns null)
                limit,        // $4
            ]
        );

        const results = rows.map(r => ({
            code: r.code,
            name_kh: r.name_kh,
            name_en: r.name_en,
            postal_code: r.postal_code,
            type: resolveType(r.code),
            match_type: r.match_type,
            score: parseFloat((r.best_score || 0).toFixed(3)),
        }));

        res.json({ results, took_ms: Date.now() - start, query: q });
    } catch (err) {
        console.error('Search error:', err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;