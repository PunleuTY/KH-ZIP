/**
 * db/seed.js
 * Seeds the database directly from postal_codes.json
 * Usage: node db/seed.js
 *
 * Reads the raw dataset format: array of [code, name_kh, name_en, postal_code]
 * 1,887 records — 25 provinces, 210 districts, 1,652 communes
 */
require('dotenv').config({ path: require('path').join(__dirname, '../.env') });

const pool = require('./pool');
const path = require('path');
const fs = require('fs');

const DATA_PATH = path.join(__dirname, '../../data/postal_codes.json');

async function seed() {
    const raw = fs.readFileSync(DATA_PATH, 'utf8');
    // Dataset is array of arrays: [ [code, name_kh, name_en, postal_code], ... ]
    const records = JSON.parse(raw);

    console.log(`📦 Seeding ${records.length} records…`);

    const client = await pool.connect();
    try {
        await client.query('BEGIN');

        // Batch upsert in chunks of 200
        const CHUNK = 200;
        let inserted = 0;

        for (let i = 0; i < records.length; i += CHUNK) {
            const chunk = records.slice(i, i + CHUNK);

            const values = [];
            const params = [];
            let idx = 1;

            for (const [code, name_kh, name_en, postal_code] of chunk) {
                values.push(`($${idx++}, $${idx++}, $${idx++}, $${idx++})`);
                params.push(code, name_kh, name_en, postal_code);
            }

            await client.query(
                `INSERT INTO locations (code, name_kh, name_en, postal_code)
         VALUES ${values.join(', ')}
         ON CONFLICT (code) DO UPDATE SET
           name_kh     = EXCLUDED.name_kh,
           name_en     = EXCLUDED.name_en,
           postal_code = EXCLUDED.postal_code`,
                params
            );

            inserted += chunk.length;
            process.stdout.write(`\r  ✓ ${inserted}/${records.length}`);
        }

        // Back-fill fts_vector
        await client.query(`
      UPDATE locations
      SET fts_vector =
        to_tsvector('simple', coalesce(name_en,'') || ' ' || coalesce(postal_code,''))
      WHERE fts_vector IS NULL;
    `);

        await client.query('COMMIT');
        console.log(`\n✅ Seeded ${inserted} rows successfully.`);
    } catch (err) {
        await client.query('ROLLBACK');
        console.error('\n❌ Seed failed:', err.message);
        process.exit(1);
    } finally {
        client.release();
        await pool.end();
    }
}

seed();