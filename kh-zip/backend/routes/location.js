/**
 * routes/location.js
 *
 * GET /api/provinces           → all 25 province records
 * GET /api/location/:code      → single record + direct children
 *
 * Dataset: max depth = 3 (province.district.commune)
 * Province codes: single integers 1–25 (no dot)
 * District codes: "1.1", "12.3", "25.7" etc.
 * Commune codes:  "1.1.1", "12.3.4" etc.
 */
const { Router } = require('express');
const pool = require('../db/pool');

const router = Router();

function resolveType(code) {
    if (!code) return 'unknown';
    const depth = code.split('.').length;
    return ['province', 'district', 'commune'][depth - 1] ?? 'commune';
}

/**
 * GET /api/provinces
 * Returns all 25 top-level province records ordered by numeric code.
 */
router.get('/provinces', async (req, res) => {
    try {
        const { rows } = await pool.query(
            `SELECT code, name_kh, name_en, postal_code
       FROM   locations
       WHERE  code NOT LIKE '%.%'
       ORDER  BY code::integer`
        );
        res.json(rows.map(r => ({ ...r, type: 'province' })));
    } catch (err) {
        console.error('Provinces error:', err);
        res.status(500).json({ error: err.message });
    }
});

/**
 * GET /api/location/:code
 * Returns the location record plus its direct children (one level deeper).
 *
 * Examples:
 *   /api/location/1       → Banteay Meanchey + all its districts
 *   /api/location/1.1     → Mangkul Bourei District + all its communes
 *   /api/location/1.1.1   → Banteay Neang Commune (leaf — no children)
 */
router.get('/location/:code', async (req, res) => {
    const { code } = req.params;

    try {
        // Fetch the location itself
        const { rows } = await pool.query(
            `SELECT code, name_kh, name_en, postal_code
       FROM   locations
       WHERE  code = $1`,
            [code]
        );

        if (!rows.length) {
            return res.status(404).json({ error: `Location code "${code}" not found` });
        }

        const loc = rows[0];
        const depth = code.split('.').length;

        // Direct children = same prefix + one dot deeper
        const { rows: children } = await pool.query(
            `SELECT code, name_kh, name_en, postal_code
       FROM   locations
       WHERE  code LIKE $1 || '.%'
         AND  array_length(string_to_array(code, '.'), 1) = $2
       ORDER  BY code`,
            [code, depth + 1]
        );

        res.json({
            ...loc,
            type: resolveType(code),
            children: children.map(c => ({ ...c, type: resolveType(c.code) })),
        });
    } catch (err) {
        console.error('Location error:', err);
        res.status(500).json({ error: err.message });
    }
});

module.exports = router;