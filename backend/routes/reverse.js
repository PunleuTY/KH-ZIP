/**
 * routes/reverse.js
 *
 * GET /api/reverse?postal_code=<code>
 *
 * Postal code → full location hierarchy.
 *
 * Dataset notes:
 *   - Postal codes can be 5-digit (provinces 1–9) or 6-digit (provinces 10–25)
 *   - Max depth is 3 levels: province → district → commune
 *   - e.g. postal_code=10201 → hierarchy: ["1", "1.1", "1.1.1"]
 *   - e.g. postal_code=100101 → hierarchy: ["10", "10.1", "10.1.1"]
 */
const { Router } = require('express');
const pool = require('../db/pool');

const router = Router();

const LEVEL_LABELS = ['province', 'district', 'commune'];

router.get('/', async (req, res) => {
    const start = Date.now();
    const postal = (req.query.postal_code || '').trim();

    if (!postal) {
        return res.status(400).json({ error: 'postal_code query param is required' });
    }

    try {
        // 1. Find the target record — most specific (deepest code) for this postal code
        const { rows: targets } = await pool.query(
            `SELECT code, name_kh, name_en, postal_code
       FROM   locations
       WHERE  postal_code = $1
       ORDER  BY array_length(string_to_array(code, '.'), 1) DESC
       LIMIT  1`,
            [postal]
        );

        if (!targets.length) {
            return res.status(404).json({ error: `Postal code "${postal}" not found` });
        }

        const target = targets[0];
        const parts = target.code.split('.');

        // 2. Build all ancestor codes: "1.1.3" → ["1", "1.1", "1.1.3"]
        const ancestorCodes = parts.map((_, i) => parts.slice(0, i + 1).join('.'));

        // 3. Fetch all ancestors in one query
        const { rows: hierarchy } = await pool.query(
            `SELECT code, name_kh, name_en, postal_code
       FROM   locations
       WHERE  code = ANY($1::text[])
       ORDER  BY array_length(string_to_array(code, '.'), 1) ASC`,
            [ancestorCodes]
        );

        const enriched = hierarchy.map((h, i) => ({
            level: LEVEL_LABELS[i] ?? `level_${i + 1}`,
            code: h.code,
            name_kh: h.name_kh,
            name_en: h.name_en,
            postal_code: h.postal_code,
        }));

        res.json({
            postal_code: postal,
            hierarchy: enriched,
            // Most specific → least specific (e.g. "Commune, District, Province")
            full_address_en: enriched.map(h => h.name_en).reverse().join(', '),
            full_address_kh: enriched.map(h => h.name_kh).reverse().join(', '),
            took_ms: Date.now() - start,
        });
    } catch (err) {
        console.error('Reverse lookup error:', err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;