/**
 * db/bootstrap.js
 *
 * Runs once at server startup.
 * Adds extensions, indexes, and the FTS trigger to your EXISTING
 * locations table. Does NOT create the table or touch your data.
 *
 * All statements use IF NOT EXISTS — completely safe to re-run.
 */
const pool = require('./pool');

async function bootstrapDB() {
  const client = await pool.connect();
  try {
    console.log('⚙  DB bootstrap starting…');

    // Extensions required for fuzzy search
    await client.query(`CREATE EXTENSION IF NOT EXISTS pg_trgm;`);
    await client.query(`CREATE EXTENSION IF NOT EXISTS unaccent;`);

    // Add fts_vector column if missing (won't touch existing column)
    await client.query(`
      ALTER TABLE locations
        ADD COLUMN IF NOT EXISTS fts_vector TSVECTOR;
    `);

    // GIN trigram indexes — power the fuzzy % similarity operator
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_name_en_trgm
        ON locations USING GIN (name_en gin_trgm_ops);
    `);
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_name_kh_trgm
        ON locations USING GIN (name_kh gin_trgm_ops);
    `);

    // GIN full-text search index
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_fts
        ON locations USING GIN (fts_vector);
    `);

    // B-tree indexes for exact + prefix postal code lookups
    // Dataset has 5-digit codes (provinces 1–9) and 6-digit (provinces 10–25)
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_postal_code
        ON locations (postal_code);
    `);
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_postal_prefix
        ON locations (postal_code text_pattern_ops);
    `);
    await client.query(`
      CREATE INDEX IF NOT EXISTS idx_loc_code
        ON locations (code);
    `);

    // Auto-update trigger — keeps fts_vector current on INSERT/UPDATE
    await client.query(`
      CREATE OR REPLACE FUNCTION locations_fts_update()
      RETURNS trigger AS $$
      BEGIN
        NEW.fts_vector :=
          to_tsvector('simple',
            coalesce(NEW.name_en, '') || ' ' ||
            coalesce(NEW.postal_code, '')
          );
        RETURN NEW;
      END;
      $$ LANGUAGE plpgsql;
    `);
    await client.query(`
      DROP TRIGGER IF EXISTS tsvec_update ON locations;
      CREATE TRIGGER tsvec_update
        BEFORE INSERT OR UPDATE ON locations
        FOR EACH ROW EXECUTE FUNCTION locations_fts_update();
    `);

    // Back-fill fts_vector for existing rows (only rows where it's still NULL)
    const { rowCount } = await client.query(`
      UPDATE locations
      SET fts_vector =
        to_tsvector('simple',
          coalesce(name_en, '') || ' ' || coalesce(postal_code, ''))
      WHERE fts_vector IS NULL;
    `);
    if (rowCount > 0) {
      console.log(`  ↳ Back-filled fts_vector for ${rowCount} existing rows.`);
    }

    // Confirm connection to existing data
    const { rows } = await pool.query(
      `SELECT
         COUNT(*) FILTER (WHERE code NOT LIKE '%.%') AS provinces,
         COUNT(*) FILTER (WHERE array_length(string_to_array(code,'.'),1) = 2) AS districts,
         COUNT(*) FILTER (WHERE array_length(string_to_array(code,'.'),1) = 3) AS communes,
         COUNT(*) AS total
       FROM locations`
    );
    const s = rows[0];
    console.log(
      `✅ Connected to existing DB — ` +
      `${s.total} rows (${s.provinces} provinces, ${s.districts} districts, ${s.communes} communes)`
    );

  } catch (err) {
    console.warn('⚠  Bootstrap warning (non-fatal):', err.message);
  } finally {
    client.release();
  }
}

module.exports = bootstrapDB;