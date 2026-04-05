const Database = require('better-sqlite3');
const path = require('path');
const fs = require('fs');

class PostalDatabase {
    constructor() {
        const dbPath = path.join(__dirname, '..', 'postal.db');
        this.db = new Database(dbPath);
        this.init();
    }

    init() {
        // Create table
        this.db.exec(`
      CREATE TABLE IF NOT EXISTS postal_codes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        postal_code TEXT NOT NULL,
        province_en TEXT,
        province_km TEXT,
        district_en TEXT,
        district_km TEXT,
        commune_en TEXT,
        commune_km TEXT,
        search_text TEXT
      )
    `);

        // Create index for fast searching
        this.db.exec(`
      CREATE INDEX IF NOT EXISTS idx_search 
      ON postal_codes(search_text)
    `);

        this.db.exec(`
      CREATE INDEX IF NOT EXISTS idx_postal 
      ON postal_codes(postal_code)
    `);

        // Load data if table is empty
        const count = this.db.prepare('SELECT COUNT(*) as count FROM postal_codes').get();
        if (count.count === 0) {
            this.loadData();
        }
    }

    loadData() {
        const dataPath = path.join(__dirname, '..', 'data', 'postal_codes.json');

        if (!fs.existsSync(dataPath)) {
            console.log('No data file found. Please add postal_codes.json to backend/data/');
            return;
        }

        const data = JSON.parse(fs.readFileSync(dataPath, 'utf8'));

        const insert = this.db.prepare(`
      INSERT INTO postal_codes 
      (postal_code, province_en, province_km, district_en, district_km, commune_en, commune_km, search_text)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    `);

        const insertMany = this.db.transaction((records) => {
            for (const record of records) {
                const searchText = [
                    record.postal_code,
                    record.province_en,
                    record.province_km,
                    record.district_en,
                    record.district_km,
                    record.commune_en,
                    record.commune_km
                ].filter(Boolean).join(' ').toLowerCase();

                insert.run(
                    record.postal_code,
                    record.province_en || null,
                    record.province_km || null,
                    record.district_en || null,
                    record.district_km || null,
                    record.commune_en || null,
                    record.commune_km || null,
                    searchText
                );
            }
        });

        insertMany(data);
        console.log(`Loaded ${data.length} postal codes into database`);
    }

    search(query, limit = 20) {
        const searchQuery = query.toLowerCase();

        return this.db.prepare(`
      SELECT * FROM postal_codes 
      WHERE search_text LIKE ? 
      LIMIT ?
    `).all(`%${searchQuery}%`, limit);
    }

    getByPostalCode(code) {
        return this.db.prepare(`
      SELECT * FROM postal_codes 
      WHERE postal_code = ?
    `).get(code);
    }

    getAll(limit = 100) {
        return this.db.prepare(`
      SELECT * FROM postal_codes 
      LIMIT ?
    `).all(limit);
    }
}

module.exports = new PostalDatabase();