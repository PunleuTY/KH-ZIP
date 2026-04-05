const fs = require('fs');

// Read the NDJSON file
const rawData = fs.readFileSync('portal_codes.ndjson', 'utf8');
const lines = rawData.trim().split('\n');

const convertedData = [];

lines.forEach(line => {
    try {
        const [code, name_km, name_en, postal_code] = JSON.parse(line);

        // Parse the hierarchical code (e.g., "1.1.1" -> Province.District.Commune)
        const parts = code.split('.');

        // Determine the level and create appropriate record
        if (parts.length === 1) {
            // Province level
            convertedData.push({
                code: code,
                postal_code: postal_code,
                province_km: name_km,
                province_en: name_en,
                district_km: null,
                district_en: null,
                commune_km: null,
                commune_en: null,
                level: 'province'
            });
        } else if (parts.length === 2) {
            // District level - find parent province
            const provinceCode = parts[0];
            const province = convertedData.find(d => d.code === provinceCode && d.level === 'province');

            if (province) {
                convertedData.push({
                    code: code,
                    postal_code: postal_code,
                    province_km: province.province_km,
                    province_en: province.province_en,
                    district_km: name_km,
                    district_en: name_en,
                    commune_km: null,
                    commune_en: null,
                    level: 'district'
                });
            }
        } else if (parts.length === 3) {
            // Commune level - find parent district and province
            const districtCode = `${parts[0]}.${parts[1]}`;
            const district = convertedData.find(d => d.code === districtCode && d.level === 'district');

            if (district) {
                convertedData.push({
                    code: code,
                    postal_code: postal_code,
                    province_km: district.province_km,
                    province_en: district.province_en,
                    district_km: district.district_km,
                    district_en: district.district_en,
                    commune_km: name_km,
                    commune_en: name_en,
                    level: 'commune'
                });
            }
        }
    } catch (error) {
        console.error('Error parsing line:', line, error);
    }
});

// Filter to only include records with postal codes (communes mainly)
const finalData = convertedData.filter(record => {
    // Keep records that have a valid postal code
    return record.postal_code && record.postal_code !== '0' && record.postal_code.length >= 5;
});

// Create data directory if it doesn't exist
if (!fs.existsSync('backend/data')) {
    fs.mkdirSync('backend/data', { recursive: true });
}

// Write the converted data
fs.writeFileSync(
    'backend/data/postal_codes.json',
    JSON.stringify(finalData, null, 2),
    'utf8'
);

console.log(`✅ Converted ${finalData.length} postal code records`);
console.log(`📊 Sample record:`);
console.log(JSON.stringify(finalData[0], null, 2));

// Create statistics
const stats = {
    total: finalData.length,
    provinces: new Set(finalData.map(r => r.province_en)).size,
    districts: new Set(finalData.filter(r => r.district_en).map(r => r.district_en)).size,
    communes: finalData.filter(r => r.commune_en).length
};

console.log('\n📈 Statistics:');
console.log(`   Total records: ${stats.total}`);
console.log(`   Provinces: ${stats.provinces}`);
console.log(`   Districts: ${stats.districts}`);
console.log(`   Communes: ${stats.communes}`);