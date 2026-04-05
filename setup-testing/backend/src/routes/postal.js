const express = require('express');
const router = express.Router();
const db = require('../database');

// Search postal codes
router.get('/search', (req, res) => {
    try {
        const { q } = req.query;

        if (!q || q.trim().length === 0) {
            return res.json([]);
        }

        const results = db.search(q.trim(), 50);
        res.json(results);
    } catch (error) {
        console.error('Search error:', error);
        res.status(500).json({ error: 'Search failed' });
    }
});

// Get by postal code
router.get('/code/:code', (req, res) => {
    try {
        const result = db.getByPostalCode(req.params.code);

        if (!result) {
            return res.status(404).json({ error: 'Postal code not found' });
        }

        res.json(result);
    } catch (error) {
        console.error('Lookup error:', error);
        res.status(500).json({ error: 'Lookup failed' });
    }
});

// Get all (for initial load)
router.get('/all', (req, res) => {
    try {
        const results = db.getAll(100);
        res.json(results);
    } catch (error) {
        console.error('Get all error:', error);
        res.status(500).json({ error: 'Failed to fetch data' });
    }
});

module.exports = router;