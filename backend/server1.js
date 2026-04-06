// /**
//  * Khmer Postal Code API — Express.js Backend
//  * Features: Fuzzy search (Khmer + English), GIN full-text, reverse lookup, <200ms target
//  */

// const express = require('express');
// const { Pool } = require('pg');
// const cors = require('cors');
// const compression = require('compression');

// const app = express();
// app.use(cors());
// app.use(compression());
// app.use(express.json());

// // ─── PostgreSQL Pool ──────────────────────────────────────────────────────────
// const pool = new Pool({
//     connectionString: process.env.DATABASE_URL || 'postgresql://typunleu:123123@localhost:5432/khmer_portal_code',
//     max: 20,
//     idleTimeoutMillis: 30000,
//     connectionTimeoutMillis: 2000,
// });

// // ─── DB Bootstrap: Indexes + pg_trgm ─────────────────────────────────────────
// async function bootstrapDB() {
//     const client = await pool.connect();
//     try {
//         // Enable trigram extension for fuzzy matching
//         await client.query(`CREATE EXTENSION IF NOT EXISTS pg_trgm;`);
//         await client.query(`CREATE EXTENSION IF NOT EXISTS unaccent;`);

//         // GIN trigram indexes for fast fuzzy search on both Khmer and English names
//         await client.query(`
//       CREATE INDEX IF NOT EXISTS idx_locations_name_en_trgm
//         ON locations USING GIN (name_en gin_trgm_ops);
//     `);
//         await client.query(`
//       CREATE INDEX IF NOT EXISTS idx_locations_name_kh_trgm
//         ON locations USING GIN (name_kh gin_trgm_ops);
//     `);
//         await client.query(`
//       CREATE INDEX IF NOT EXISTS idx_locations_postal_code
//         ON locations (postal_code);
//     `);
//         await client.query(`
//       CREATE INDEX IF NOT EXISTS idx_locations_code
//         ON locations (code);
//     `);

//         // Full-text search vector index
//         await client.query(`
//       ALTER TABLE locations ADD COLUMN IF NOT EXISTS fts_vector tsvector;
//     `);
//         await client.query(`
//       UPDATE locations SET fts_vector =
//         to_tsvector('simple', coalesce(name_en, '') || ' ' || coalesce(postal_code::text, ''))
//       WHERE fts_vector IS NULL;
//     `);
//         await client.query(`
//       CREATE INDEX IF NOT EXISTS idx_locations_fts
//         ON locations USING GIN (fts_vector);
//     `);

//         // Trigger to auto-update fts_vector on insert/update
//         await client.query(`
//       CREATE OR REPLACE FUNCTION locations_fts_trigger() RETURNS trigger AS $$
//       BEGIN
//         NEW.fts_vector := to_tsvector('simple',
//           coalesce(NEW.name_en, '') || ' ' || coalesce(NEW.postal_code::text, ''));
//         RETURN NEW;
//       END
//       $$ LANGUAGE plpgsql;
//     `);
//         await client.query(`
//       DROP TRIGGER IF EXISTS tsvector_update ON locations;
//       CREATE TRIGGER tsvector_update BEFORE INSERT OR UPDATE ON locations
//         FOR EACH ROW EXECUTE FUNCTION locations_fts_trigger();
//     `);

//         console.log('✅ DB bootstrap complete: pg_trgm + GIN indexes ready');
//     } catch (err) {
//         console.error('Bootstrap error (non-fatal):', err.message);
//     } finally {
//         client.release();
//     }
// }

// // ─── Helper: determine location type from code depth ─────────────────────────
// function resolveType(code) {
//     if (!code) return 'unknown';
//     const parts = code.split('.');
//     if (parts.length === 1) return 'province';
//     if (parts.length === 2) return 'district';
//     if (parts.length === 3) return 'commune';
//     return 'village';
// }

// // ─── GET /api/search?q=...&limit=10 ──────────────────────────────────────────
// // Unified fuzzy + full-text search across Khmer and English
// app.get('/api/search', async (req, res) => {
//     const start = Date.now();
//     const q = (req.query.q || '').trim();
//     const limit = Math.min(parseInt(req.query.limit) || 10, 50);

//     if (!q) return res.json({ results: [], took_ms: 0 });

//     try {
//         // Strategy 1: exact postal code match
//         // Strategy 2: trigram similarity on name_en + name_kh
//         // Strategy 3: full-text search fallback
//         // All unioned and ranked by relevance score
//         const { rows } = await pool.query(`
//       WITH ranked AS (
//         -- Exact / prefix postal code
//         SELECT *, 1.0 AS score, 'exact_postal' AS match_type
//         FROM locations
//         WHERE postal_code::text = $1 OR postal_code::text LIKE $2

//         UNION ALL

//         -- Full-text search (fast, GIN)
//         SELECT *, ts_rank(fts_vector, query) AS score, 'fulltext' AS match_type
//         FROM locations, to_tsquery('simple', $3 || ':*') query
//         WHERE fts_vector @@ query

//         UNION ALL

//         -- Trigram fuzzy on English name (handles misspellings)
//         SELECT *,
//           similarity(name_en, $1) AS score,
//           'fuzzy_en' AS match_type
//         FROM locations
//         WHERE name_en % $1

//         UNION ALL

//         -- Trigram fuzzy on Khmer name
//         SELECT *,
//           similarity(name_kh, $1) AS score,
//           'fuzzy_kh' AS match_type
//         FROM locations
//         WHERE name_kh % $1
//       ),
//       deduped AS (
//         SELECT DISTINCT ON (code)
//           code, name_kh, name_en, postal_code,
//           MAX(score) OVER (PARTITION BY code) AS best_score,
//           match_type
//         FROM ranked
//         ORDER BY code, best_score DESC
//       )
//       SELECT * FROM deduped
//       ORDER BY best_score DESC, length(code) ASC
//       LIMIT $4;
//     `, [q, q + '%', q.replace(/[^a-zA-Z0-9\u1780-\u17FF ]/g, ''), limit]);

//         const results = rows.map(r => ({
//             code: r.code,
//             name_kh: r.name_kh,
//             name_en: r.name_en,
//             postal_code: r.postal_code,
//             type: resolveType(r.code),
//             match_type: r.match_type,
//             score: parseFloat(r.best_score || 0).toFixed(3),
//         }));

//         res.json({ results, took_ms: Date.now() - start, query: q });
//     } catch (err) {
//         console.error('Search error:', err);
//         res.status(500).json({ error: err.message });
//     }
// });

// // ─── GET /api/reverse?postal_code=10201 ──────────────────────────────────────
// // Reverse lookup: postal code → full location hierarchy
// app.get('/api/reverse', async (req, res) => {
//     const start = Date.now();
//     const postal = (req.query.postal_code || '').trim();

//     if (!postal) return res.status(400).json({ error: 'postal_code required' });

//     try {
//         const { rows } = await pool.query(`
//       SELECT code, name_kh, name_en, postal_code
//       FROM locations
//       WHERE postal_code::text = $1
//       ORDER BY length(code) ASC
//       LIMIT 1;
//     `, [postal]);

//         if (!rows.length) return res.status(404).json({ error: 'Not found' });

//         const target = rows[0];
//         const codeParts = target.code.split('.');

//         // Build hierarchy: fetch each parent level
//         const hierarchyCodes = codeParts.map((_, i) => codeParts.slice(0, i + 1).join('.'));
//         const { rows: hierarchy } = await pool.query(`
//       SELECT code, name_kh, name_en, postal_code
//       FROM locations
//       WHERE code = ANY($1::text[])
//       ORDER BY length(code) ASC;
//     `, [hierarchyCodes]);

//         const levels = ['province', 'district', 'commune', 'village'];
//         const hierarchyResult = hierarchy.map((h, i) => ({
//             level: levels[i] || `level_${i}`,
//             code: h.code,
//             name_kh: h.name_kh,
//             name_en: h.name_en,
//             postal_code: h.postal_code,
//         }));

//         res.json({
//             postal_code: postal,
//             hierarchy: hierarchyResult,
//             full_address_en: hierarchyResult.map(h => h.name_en).reverse().join(', '),
//             full_address_kh: hierarchyResult.map(h => h.name_kh).reverse().join(', '),
//             took_ms: Date.now() - start,
//         });
//     } catch (err) {
//         console.error('Reverse lookup error:', err);
//         res.status(500).json({ error: err.message });
//     }
// });

// // ─── GET /api/location/:code ──────────────────────────────────────────────────
// // Get single location + its children
// app.get('/api/location/:code', async (req, res) => {
//     const { code } = req.params;
//     try {
//         const { rows: [loc] } = await pool.query(
//             `SELECT * FROM locations WHERE code = $1`, [code]
//         );
//         if (!loc) return res.status(404).json({ error: 'Not found' });

//         // Children: direct children only (one dot deeper)
//         const depth = code.split('.').length;
//         const { rows: children } = await pool.query(`
//       SELECT code, name_kh, name_en, postal_code
//       FROM locations
//       WHERE code LIKE $1 || '.%'
//         AND array_length(string_to_array(code, '.'), 1) = $2
//       ORDER BY code;
//     `, [code, depth + 1]);

//         res.json({
//             ...loc,
//             type: resolveType(code),
//             children: children.map(c => ({ ...c, type: resolveType(c.code) })),
//         });
//     } catch (err) {
//         res.status(500).json({ error: err.message });
//     }
// });

// // ─── GET /api/provinces ───────────────────────────────────────────────────────
// app.get('/api/provinces', async (req, res) => {
//     try {
//         const { rows } = await pool.query(`
//       SELECT code, name_kh, name_en, postal_code
//       FROM locations
//       WHERE code NOT LIKE '%.%'
//       ORDER BY code::float;
//     `);
//         res.json(rows.map(r => ({ ...r, type: 'province' })));
//     } catch (err) {
//         res.status(500).json({ error: err.message });
//     }
// });

// // ─── Health check ─────────────────────────────────────────────────────────────
// app.get('/api/health', async (req, res) => {
//     try {
//         const { rows } = await pool.query('SELECT COUNT(*) FROM locations');
//         res.json({ status: 'ok', total_locations: parseInt(rows[0].count) });
//     } catch (err) {
//         res.status(503).json({ status: 'error', error: err.message });
//     }
// });

// // ─── Start ────────────────────────────────────────────────────────────────────
// const PORT = process.env.PORT || 3001;
// app.listen(PORT, async () => {
//     console.log(`🚀 Khmer Postal API running on :${PORT}`);
//     await bootstrapDB();
// });