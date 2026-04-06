require('dotenv').config();

const express = require('express');
const cors = require('cors');
const compression = require('compression');
const pool = require('./db/pool');
const bootstrapDB = require('./db/bootstrap');
const searchRouter = require('./routes/search');
const reverseRouter = require('./routes/reverse');
const locationRouter = require('./routes/location');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(compression());
app.use(express.json());

// ── Routes ────────────────────────────────────────────────────
app.use('/api/search', searchRouter);
app.use('/api/reverse', reverseRouter);

// location router handles both /api/provinces and /api/location/:code
app.use('/api', locationRouter);

// ── Health ────────────────────────────────────────────────────
app.get('/api/health', async (req, res) => {
    try {
        const { rows } = await pool.query(
            `SELECT
         COUNT(*) FILTER (WHERE code NOT LIKE '%.%')           AS provinces,
         COUNT(*) FILTER (WHERE array_length(string_to_array(code,'.'),1) = 2) AS districts,
         COUNT(*) FILTER (WHERE array_length(string_to_array(code,'.'),1) = 3) AS communes,
         COUNT(*)                                               AS total
       FROM locations`
        );
        const s = rows[0];
        res.json({
            status: 'ok',
            total_locations: parseInt(s.total),
            provinces: parseInt(s.provinces),
            districts: parseInt(s.districts),
            communes: parseInt(s.communes),
        });
    } catch (err) {
        res.status(503).json({ status: 'error', error: err.message });
    }
});

app.use((req, res) => res.status(404).json({ error: 'Not found' }));

// ── Start ─────────────────────────────────────────────────────
app.listen(PORT, async () => {
    console.log(`🚀  Khmer Postal API  →  http://localhost:${PORT}`);
    await bootstrapDB();
});