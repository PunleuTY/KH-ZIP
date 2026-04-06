-- ============================================================
--  Khmer Postal Code — Index Setup Only
--  Run ONCE on your existing database to add search indexes.
--  Does NOT create or modify the locations table or its data.
--
--  Usage: psql $DATABASE_URL -f db/schema.sql
-- ============================================================
-- Required extensions for fuzzy search
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS unaccent;
-- Add fts_vector column if it doesn't exist yet
ALTER TABLE locations
ADD COLUMN IF NOT EXISTS fts_vector TSVECTOR;
-- GIN trigram indexes (fuzzy / misspelling tolerance)
CREATE INDEX IF NOT EXISTS idx_loc_name_en_trgm ON locations USING GIN (name_en gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_loc_name_kh_trgm ON locations USING GIN (name_kh gin_trgm_ops);
-- GIN full-text search index
CREATE INDEX IF NOT EXISTS idx_loc_fts ON locations USING GIN (fts_vector);
-- B-tree indexes for exact and prefix postal code lookups
-- Supports both 5-digit (provinces 1–9) and 6-digit (provinces 10–25)
CREATE INDEX IF NOT EXISTS idx_loc_postal_code ON locations (postal_code);
CREATE INDEX IF NOT EXISTS idx_loc_postal_prefix ON locations (postal_code text_pattern_ops);
CREATE INDEX IF NOT EXISTS idx_loc_code ON locations (code);
-- Auto-update trigger: keeps fts_vector in sync on INSERT/UPDATE
CREATE OR REPLACE FUNCTION locations_fts_update() RETURNS trigger AS $$ BEGIN NEW.fts_vector := to_tsvector(
        'simple',
        coalesce(NEW.name_en, '') || ' ' || coalesce(NEW.postal_code, '')
    );
RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS tsvec_update ON locations;
CREATE TRIGGER tsvec_update BEFORE
INSERT
    OR
UPDATE ON locations FOR EACH ROW EXECUTE FUNCTION locations_fts_update();
-- Back-fill fts_vector for all existing rows
UPDATE locations
SET fts_vector = to_tsvector(
        'simple',
        coalesce(name_en, '') || ' ' || coalesce(postal_code, '')
    )
WHERE fts_vector IS NULL;