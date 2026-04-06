-- ============================================================
--  Khmer Postal Code — Seed Data
--  1887 records: 25 provinces, 210 districts, 1652 communes
--  Generated from postal_codes.json
--  Run AFTER schema.sql
-- ============================================================
BEGIN;
INSERT INTO locations (code, name_kh, name_en, postal_code)
VALUES (
        '1',
        'ខេត្ត បន្ទាយមានជ័យ​',
        'Banteay Meanchey Province',
        '10000'
    ),
    (
        '1.1',
        'ស្រុក មង្គលបូរី',
        'Mangkul Bourei District',
        '10200'
    ),
    (
        '1.1.1',
        'ឃុំ បន្ទាយនាង',
        'Banteay Neang Commune',
        '10201'
    ),
    (
        '1.1.2',
        'ឃុំ បត់ត្រង់',
        'Bat Trang Commune',
        '10202'
    ),
    (
        '1.1.3',
        'ឃុំ ចំណោម',
        'Chamnaom Commune',
        '10203'
    ),
    (
        '1.1.4',
        'ឃុំ គោកបល្ល័ង្គ',
        'Kouk Ballang Commune',
        '10204'
    ),
    (
        '1.1.5',
        'ឃុំ គយម៉ែង',
        'Koy Maeng Commune',
        '10205'
    ),
    (
        '1.1.6',
        'ឃុំ អូរប្រាសាទ',
        'Ou Prasat Commune',
        '10206'
    ),
    (
        '1.1.7',
        'ឃុំ ភ្នំតូច',
        'Phnum Touch Commune',
        '10207'
    ),
    (
        '1.1.8',
        'ឃុំ រហាត់ទឹក',
        'Rohat Tuek Commune',
        '10208'
    ),
    (
        '1.1.9',
        'ឃុំ ឫស្សីក្រោក',
        'Ruessei Kraok Commune',
        '10209'
    ),
    (
        '1.1.10',
        'ឃុំ សំបួរ',
        'Sambuor Commune',
        '10210'
    ),
    ('1.1.11', 'ឃុំ​ សឿ', 'Soea Commune', '10211'),
    (
        '1.1.12',
        'ឃុំ ស្រះរាំង',
        'Srah Reang Commune',
        '10212'
    ),
    ('1.1.13', 'ឃុំ តាឡំ', 'Ta Lam Commune', '10213'),
    (
        '1.2',
        'ស្រុក ភ្នំស្រុក',
        'Phnum Srok District',
        '10300'
    ),
    (
        '1.2.1',
        'ឃុំ ​ណាំតៅ',
        'Nam Tau Commune',
        '10301'
    ),
    (
        '1.2.2',
        'ឃុំ ប៉ោយចារ',
        'Paoy Char Commune',
        '10302'
    ),
    ('1.2.3', 'ឃុំ ពន្លៃ', 'Punley Commune', '10303'),
    (
        '1.2.4',
        'ឃុំ ស្ពានស្រែង',
        'Spean Sraeng Commune',
        '10304'
    ),
    (
        '1.2.5',
        'ឃុំ ស្រះជីក',
        'Srah Chik Commune',
        '10305'
    ),
    (
        '1.2.6',
        'ឃុំ ​ភ្នំដី',
        'Phnum Dei Commune',
        '10306'
    ),
    (
        '1.3',
        'ស្រុក​ ព្រះនេត្រព្រះ',
        'Preah Net Preah District',
        '10400'
    ),
    (
        '1.3.1',
        'ឃុំ ឈ្នួរមានជ័យ',
        'Chhnuo Mean Chey Commune',
        '10401'
    ),
    (
        '1.3.2',
        'ឃុំ ជប់វារី',
        'Chub Vari Commune',
        '10402'
    ),
    (
        '1.3.3',
        'ឃុំ ​ភ្នំលៀប',
        'Phnum Lieb Commune',
        '10403'
    ),
    (
        '1.3.4',
        'ឃុំ ប្រាសាទ',
        'Prasat Commune',
        '10404'
    ),
    (
        '1.3.5',
        'ឃុំ ព្រះនេត្រព្រះ',
        'Preah Net Preah Commune',
        '10405'
    ),
    ('1.3.6', 'ឃុំ រហាល', 'Rohal Commune', '10406'),
    (
        '1.3.7',
        'ឃុំ ទានកាំ',
        'Tean Kam Commune',
        '10407'
    ),
    (
        '1.3.8',
        'ឃុំ ​ទឹកជោរ',
        'Tuek Chour Commune',
        '10408'
    ),
    (
        '1.3.9',
        'ឃុំ បុស្បូវ',
        'Bos Sbouv Commune',
        '10409'
    ),
    (
        '1.4',
        'ស្រុក អូរជ្រៅ',
        'Ou Chrov District',
        '10500'
    ),
    ('1.4.1', 'ឃុំ ចង្ហា', 'Changha Commune', '10501'),
    ('1.4.2', 'ឃុំ កូប', 'Koub Commune', '10502'),
    (
        '1.4.3',
        'ឃុំ គុត្តសត',
        'Kuttaksat Commune',
        '10503'
    ),
    (
        '1.4.4',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '10505'
    ),
    ('1.4.5', 'ឃុំ សូភី', 'Souphi Commune', '10506'),
    ('1.4.6', 'ឃុំ សឹង្ហ', 'Soeng Commune', '10507'),
    (
        '1.4.7',
        'ឃុំ អូរបីជាន់',
        'Ou Beichoan Commune',
        '10509'
    ),
    (
        '1.5',
        'ក្រុង សិរីសោភ័ណ',
        'Serei Saophoan Municipality',
        '10600'
    ),
    (
        '1.5.1',
        'សង្កាត់ កំពង់ស្វាយ',
        'Sangkat Kampong Svay',
        '10602'
    ),
    (
        '1.5.2',
        'សង្កាត់ កោះពងសត្វ',
        'Sangkat Kaoh Pong Sat',
        '10603'
    ),
    (
        '1.5.3',
        'សង្កាត់ ម្កាក់',
        'Sangkat Mkak',
        '10604'
    ),
    (
        '1.5.4',
        'សង្កាត់ អូរអំបិល',
        'Sangkat Ou Ambel',
        '10605'
    ),
    (
        '1.5.5',
        'សង្កាត់ ភ្នៀត',
        'Sangkat Phniet',
        '10606'
    ),
    (
        '1.5.6',
        'សង្កាត់ ព្រះពន្លា',
        'Sangkat Preah Punlea',
        '10607'
    ),
    (
        '1.5.7',
        'សង្កាត់ ទឹកថ្លា',
        'Sangkat Tuek Thla',
        '10608'
    ),
    (
        '1.6',
        'ស្រុក ថ្មពួក',
        'Thma Puok District',
        '10700'
    ),
    (
        '1.6.1',
        'ឃុំ បន្ទាយឆ្មារ',
        'Banteay Chhmar Commune',
        '10701'
    ),
    (
        '1.6.2',
        'ឃុំ​ គោករមៀត',
        'Kouk Romiet Commune',
        '10702'
    ),
    (
        '1.6.3',
        'ឃុំ ភូមិថ្មី',
        'Phum Thmei Commune',
        '10703'
    ),
    (
        '1.6.4',
        'ឃុំ ថ្មពួក',
        'Thma Puok Commune',
        '10704'
    ),
    (
        '1.6.5',
        'ឃុំ ​គោកកឋិន',
        'Kouk Kakthen Commune',
        '10705'
    ),
    ('1.6.6', 'ឃុំ គំរូ', 'Kumru Commune', '10706'),
    (
        '1.7',
        'ស្រុក ​ស្វាយ​ចេក',
        'Svay Chek District',
        '10800'
    ),
    ('1.7.1', 'ឃុំ ផ្គាំ', 'Phkoam Commune', '10801'),
    ('1.7.2', 'ឃុំ សារង្គ', 'Sarung Commune', '10802'),
    (
        '1.7.3',
        'ឃុំ ស្លក្រាម',
        'Sla Kram Commune',
        '10803'
    ),
    (
        '1.7.4',
        'ឃុំ ស្វាយចេក',
        'Svay Chek Commune',
        '10804'
    ),
    ('1.7.5', 'ឃុំ តាបែន', 'Ta Baen Commune', '10805'),
    ('1.7.6', 'ឃុំ តាផូ', 'Ta Phou Commune', '10806'),
    ('1.7.7', 'ឃុំ ទ្រាស', 'Treas Commune', '10807'),
    ('1.7.8', 'ឃុំ រលួស', 'Roluos Commune', '10808'),
    ('1.8', 'ស្រុក ម៉ាឡៃ', 'Malai District', '10900'),
    (
        '1.8.1',
        'ឃុំ បឹងបេង',
        'Boeng Beng Commune',
        '10901'
    ),
    ('1.8.2', 'ឃុំ ម៉ាឡៃ', 'Malai Commune', '10902'),
    (
        '1.8.3',
        'ឃុំ អូរសំព័រ',
        'Ou Sampoar Commune',
        '10903'
    ),
    (
        '1.8.4',
        'ឃុំ អូរស្រឡៅ',
        'Ou Sralau Commune',
        '10904'
    ),
    (
        '1.8.5',
        'ឃុំ ទួលពង្រ',
        'Tuol Pungro Commune',
        '10905'
    ),
    ('1.8.6', 'ឃុំ តាគង់', 'Ta Kung Commune', '10906'),
    (
        '1.9',
        'ក្រុង ប៉ោយប៉ែត',
        'Paoy Paet Municipality',
        '11000'
    ),
    (
        '1.9.1',
        'សង្កាត់ និមិត្ត',
        'Sangkat Nimit',
        '11001'
    ),
    (
        '1.9.2',
        'សង្កាត់ ប៉ោយប៉ែត',
        'Sangkat Paoy Paet',
        '11002'
    ),
    (
        '1.9.3',
        'សង្កាត់ ផ្សារកណ្តាល',
        'Sangkat Phsar Kandal',
        '11003'
    ),
    (
        '1.9.4',
        'សង្កាត់ អូរជ្រៅ',
        'Sangkat Ou Chrov',
        '11004'
    ),
    (
        '1.9.5',
        'សង្កាត់ អូរឫស្សី',
        'Sangkat Ou Ruessei',
        '11005'
    ),
    (
        '2',
        'ខេត្ត បាត់ដំបង',
        'Battambang Province',
        '20000'
    ),
    ('2.1', 'ស្រុក បាណន់', 'Banan District', '20100'),
    (
        '2.1.1',
        'ឃុំ កន្ទឺ ១',
        'Kantueu Muoy Commune',
        '20101'
    ),
    (
        '2.1.2',
        'ឃុំ កន្ទឺ ២',
        'Kantueu Pir Commune',
        '20102'
    ),
    (
        '2.1.3',
        'ឃុំ បាយដំរាំ',
        'Bay Damram Commune',
        '20103'
    ),
    (
        '2.1.4',
        'ឃុំ ឈើទាល',
        'Chheu Teal Commune',
        '20104'
    ),
    (
        '2.1.5',
        '​ឃុំ ចែងមានជ័យ',
        'Chaeng Mean Chey Commune',
        '20105'
    ),
    (
        '2.1.6',
        '​ឃុំ ភ្នំសំពៅ',
        'Phnum Sampov Commune',
        '20106'
    ),
    ('2.1.7', 'ឃុំ ស្នឹង', 'Snoeng Commune', '20107'),
    (
        '2.1.8',
        'ឃុំ តាគ្រាម',
        'Ta Kream Commune',
        '20108'
    ),
    (
        '2.2',
        'ស្រុក ថ្មគោល',
        'Thma Koul District',
        '20200'
    ),
    ('2.2.1', 'ឃុំ តាពូង', 'Ta Pung Commune', '20201'),
    (
        '2.2.2',
        'ឃុំ តាម៉ឺន',
        'Ta Meun Commune',
        '20202'
    ),
    (
        '2.2.3',
        'ឃុំ អូរតាគី',
        'Ou Ta Ki Commune',
        '20203'
    ),
    ('2.2.4', 'ឃុំ ជ្រៃ', 'Chrey Commune', '20204'),
    (
        '2.2.5',
        'ឃុំ ​អន្លង់រុន',
        'Anlung Run Commune',
        '20205'
    ),
    (
        '2.2.6',
        'ឃុំ​ ជ្រោយស្តៅ',
        'Chrouy Sdau Commune',
        '20206'
    ),
    (
        '2.2.7',
        '​ឃុំ បឹងព្រីង',
        'Boeng Pring Commune',
        '20207'
    ),
    (
        '2.2.8',
        'ឃុំ គោកឃ្មុំ',
        'Kouk Khmum Commune',
        '20208'
    ),
    (
        '2.2.9',
        'ឃុំ បន្សាយត្រែង',
        'Bansay Traeng Commune',
        '20209'
    ),
    (
        '2.2.10',
        'ឃុំ រូងជ្រៃ',
        'Rung Chrey Commune',
        '20210'
    ),
    (
        '2.3',
        'ក្រុង បាត់ដំបង',
        'Bat Dambang Municipality',
        '20300'
    ),
    (
        '2.3.1',
        'សង្កាត់ ទួលតាឯក',
        'Sangkat Tuol Ta Aek',
        '20301'
    ),
    (
        '2.3.2',
        'សង្កាត់ ព្រែកព្រះស្តេច',
        'Sangkat Preaek Preah Sdach',
        '20302'
    ),
    (
        '2.3.3',
        'សង្កាត់ រតនៈ',
        'Sangkat Rottaknak',
        '20303'
    ),
    (
        '2.3.4',
        'សង្កាត់​ ចំការសំរោង',
        'Sangkat Chamkar Samraong',
        '20304'
    ),
    (
        '2.3.5',
        'សង្កាត់ ​ស្លាកែត',
        'Sangkat Sla Kaet',
        '20305'
    ),
    (
        '2.3.6',
        'សង្កាត់ ក្តុលដូនទាវ',
        'Sangkat Kdol Doun Teav',
        '20306'
    ),
    (
        '2.3.7',
        'សង្កាត់ អូរម៉ាល់',
        'Sangkat Ou Mal',
        '20307'
    ),
    (
        '2.3.8',
        'សង្កាត់ វត្តគរ',
        'Sangkat Voat Kor',
        '20308'
    ),
    (
        '2.3.9',
        'សង្កាត់ អូរចារ',
        'Sangkat Ou Char',
        '20309'
    ),
    (
        '2.3.10',
        'សង្កាត់ ស្វាយប៉ោ',
        'Sangkat Svay Pao',
        '20310'
    ),
    ('2.4', 'ស្រុក បវេល', 'Bavel District', '20400'),
    ('2.4.1', 'ឃុំ បវេល', 'Bavel Commune', '20401'),
    (
        '2.4.2',
        'ឃុំ ខ្នាចរមាស',
        'Khnach Romeas Commune',
        '20402'
    ),
    ('2.4.3', 'ឃុំ ល្វា', 'Lvea Commune', '20403'),
    (
        '2.4.4',
        'ឃុំ ព្រៃខ្ពស់',
        'Prey Khpuos Commune',
        '20404'
    ),
    (
        '2.4.5',
        'ឃុំ អំពិលប្រាំដើម',
        'Ampil Pram Daeum Commune',
        '20405'
    ),
    (
        '2.4.6',
        'ឃុំ ក្តុលតាហែន',
        'Kdol Ta Haen Commune',
        '20406'
    ),
    (
        '2.4.7',
        'ឃុំ បឹងប្រាំ',
        'Boeng Pram Commune',
        '20407'
    ),
    (
        '2.4.8',
        'ឃុំ ឃ្លាំងមាស',
        'Khleang Meas Commune',
        '20408'
    ),
    ('2.4.9', 'ឃុំ បួវិល', 'Buovel Commune', '20409'),
    (
        '2.5',
        'ស្រុក ឯកភ្នំ',
        'Aek Phnum District',
        '20500'
    ),
    (
        '2.5.1',
        'ឃុំ ព្រែកនរិន្ទ',
        'Preaek Norin Commune',
        '20501'
    ),
    (
        '2.5.2',
        'ឃុំ សំរោងក្នុង',
        'Samraong Knong Commune',
        '20502'
    ),
    (
        '2.5.3',
        'ឃុំ ព្រែកខ្ពប',
        'Preaek Khpob Commune',
        '20503'
    ),
    (
        '2.5.4',
        'ឃុំ ព្រែកហ្លួង',
        'Preaek Luong Commune',
        '20504'
    ),
    (
        '2.5.5',
        'ឃុំ ពាមឯក',
        'Peam Aek Commune',
        '20505'
    ),
    (
        '2.5.6',
        'ឃុំ ព្រៃចាស់',
        'Prey Chas Commune',
        '20506'
    ),
    (
        '2.5.7',
        'ឃុំ កោះជីវាំង',
        'Kaoh Chiveang Commune',
        '20507'
    ),
    (
        '2.6',
        '​ស្រុក មោងឫស្សី',
        'Moung Ruessei District',
        '20600'
    ),
    ('2.6.1', 'ឃុំ មោង', 'Moung Commune', '20601'),
    ('2.6.2', 'ឃុំ គារ', 'Kear Commune', '20602'),
    (
        '2.6.3',
        'ឃុំ ព្រៃស្វាយ',
        'Prey Svay Commune',
        '20603'
    ),
    (
        '2.6.4',
        'ឃុំ ឫស្សីក្រាំង',
        'Ruessei Krang Commune',
        '20604'
    ),
    ('2.6.5', 'ឃុំ ជ្រៃ', 'Chrey Commune', '20605'),
    (
        '2.6.6',
        'ឃុំ តាលាស់',
        'Ta Loas Commune',
        '20606'
    ),
    ('2.6.7', 'ឃុំ កកោះ', 'Kakaoh Commune', '20607'),
    (
        '2.6.8',
        'ឃុំ ព្រៃតូច',
        'Prey Touch Commune',
        '20608'
    ),
    (
        '2.6.9',
        'ឃុំ របស់មង្គល',
        'Robas Mangkul Commune',
        '20609'
    ),
    (
        '2.7',
        'ស្រុក រតនមណ្ឌល',
        'Rotanak Mundul District',
        '20700'
    ),
    ('2.7.1', 'ឃុំ ស្តៅ', 'Sdau Commune', '20701'),
    (
        '2.7.2',
        'ឃុំ អណ្តើកហែប',
        'Andaeuk Haeb Commune',
        '20702'
    ),
    (
        '2.7.3',
        'ឃុំ ​ផ្លូវមាស',
        'Phlouv Meas Commune',
        '20703'
    ),
    ('2.7.4', 'ឃុំ ត្រែង', 'Traeng Commune', '20704'),
    (
        '2.7.5',
        'ឃុំ រស្មីសង្ហារ',
        'Reaksmei Sangha Commune',
        '20705'
    ),
    (
        '2.8',
        'ស្រុក សង្កែ',
        'Sangkae District',
        '20800'
    ),
    (
        '2.8.1',
        'ឃុំ អន្លង់វិល',
        'Anlung Vil Commune',
        '20801'
    ),
    ('2.8.2', 'ឃុំ នរា', 'Norea Commune', '20802'),
    ('2.8.3', 'ឃុំ តាប៉ុន', 'Ta Pon Commune', '20803'),
    ('2.8.4', 'ឃុំ រកា', 'Roka Commune', '20804'),
    (
        '2.8.5',
        'ឃុំ កំពង់ព្រះ',
        'Kampong Preah Commune',
        '20805'
    ),
    (
        '2.8.6',
        'ឃុំ កំពង់ព្រៀង',
        'Kampong Prieng Commune',
        '20806'
    ),
    (
        '2.8.7',
        'ឃុំ រាំងកេសី',
        'Reang Kesei Commune',
        '20807'
    ),
    (
        '2.8.8',
        'ឃុំ អូរដំបង១',
        'Ou Dambang Muoy Commune',
        '20808'
    ),
    (
        '2.8.9',
        'ឃុំ អូរដំបង២',
        'Ou Dambang Pir Commune',
        '20809'
    ),
    (
        '2.8.10',
        'ឃុំ វត្តតាមិម',
        'Vaot Ta Muem Commune',
        '20810'
    ),
    (
        '2.9',
        'ស្រុក សំឡូត',
        'Samlout District',
        '20900'
    ),
    ('2.9.1', 'ឃុំ តាតោក', 'Ta Taok Commune', '20901'),
    (
        '2.9.2',
        'ឃុំ កំពង់ល្ពៅ',
        'Kampong Lpov Commune',
        '20902'
    ),
    (
        '2.9.3',
        'ឃុំ អូរសំរិល',
        'Ou Samrel Commune',
        '20903'
    ),
    ('2.9.4', 'ឃុំ ស៊ុង', 'Sung Commune', '20904'),
    ('2.9.5', 'ឃុំ សំឡូត', 'Samlout Commune', '20905'),
    (
        '2.9.6',
        'ឃុំ មានជ័យ',
        'Mean Chey Commune',
        '20906'
    ),
    ('2.9.7', 'ឃុំ តាសាញ', 'Ta Sanh Commune', '20907'),
    (
        '2.1',
        'ស្រុក សំពៅលូន',
        'Sampov Lun District',
        '21000'
    ),
    (
        '2.10.1',
        'ឃុំ សំពៅលូន',
        'Sampov Lun Commune',
        '21001'
    ),
    (
        '2.10.2',
        'ឃុំ អង្គរបាន',
        'Angkor Ban Commune',
        '21002'
    ),
    (
        '2.10.3',
        'ឃុំ តាស្តា',
        'Ta Sda Commune',
        '21003'
    ),
    (
        '2.10.4',
        'ឃុំ សន្តិភាព',
        'Santepheap Commune',
        '21004'
    ),
    (
        '2.10.5',
        'ឃុំ សិរីមានជ័យ',
        'Serei Mean Chey Commune',
        '21005'
    ),
    (
        '2.10.6',
        'ឃុំ ជ្រៃសីមា',
        'Chrey Seima Commune',
        '21006'
    ),
    (
        '2.11',
        'ស្រុក ភ្នំព្រឹក',
        'Phnum Proek District',
        '21100'
    ),
    (
        '2.11.1',
        'ឃុំ ភ្នំព្រឹក',
        'Phnum Proek Commune',
        '21101'
    ),
    (
        '2.11.2',
        'ឃុំ ពេជ្រចិន្តា',
        'Pech Chenda Commune',
        '21102'
    ),
    (
        '2.11.3',
        'ឃុំ បារាំងធ្លាក់',
        'Barang Thleak Commune',
        '21104'
    ),
    (
        '2.11.4',
        'ឃុំ អូររំដួល',
        'Ou Rumduol Commune',
        '21105'
    ),
    ('2.11.5', 'ឃុំ បួរ', 'Buor Commune', '21106'),
    (
        '2.12',
        'ស្រុក កំរៀង',
        'Kamrieng District',
        '21200'
    ),
    (
        '2.12.1',
        'ឃុំ កំរៀង',
        'Kamrieng Commune',
        '21201'
    ),
    (
        '2.12.2',
        'ឃុំ បឹងរាំង',
        'Boeng Reang Commune',
        '21202'
    ),
    ('2.12.3', 'ឃុំ អូរដា', 'Ou Da Commune', '21203'),
    ('2.12.4', 'ឃុំ ត្រាង', 'Trang Commune', '21204'),
    (
        '2.12.5',
        'ឃុំ តាសែន',
        'Ta Saen Commune',
        '21205'
    ),
    (
        '2.12.6',
        'ឃុំ តាក្រី',
        'Ta Krei Commune',
        '21206'
    ),
    (
        '2.13',
        'ស្រុក គាស់ក្រឡ',
        'Koas Krala District',
        '21300'
    ),
    (
        '2.13.1',
        'ឃុំ ធិបតី',
        'Thibpakdei Commune',
        '21301'
    ),
    (
        '2.13.2',
        'ឃុំ គាស់ក្រឡ',
        'Kaos Krala Commune',
        '21302'
    ),
    ('2.13.3', 'ឃុំ ហប់', 'Hab Commune', '21303'),
    (
        '2.13.4',
        'ឃុំ ព្រះផុស',
        'Preah Phos Commune',
        '21304'
    ),
    (
        '2.13.5',
        'ឃុំ ដូនបា',
        'Doun Ba Commune',
        '21305'
    ),
    (
        '2.13.6',
        'ឃុំ ឆ្នាល់មាន់',
        'Chhnal Moan Commune',
        '21306'
    ),
    (
        '2.14',
        'ស្រុក រុក្ខគិរី',
        'Rukhak Kiri District',
        '21400'
    ),
    (
        '2.14.1',
        'ឃុំ ព្រែកជីក',
        'Preaek Chik Commune',
        '21401'
    ),
    (
        '2.14.2',
        'ឃុំ ព្រៃត្រឡាច',
        'Prey Tralach Commune',
        '21402'
    ),
    ('2.14.3', 'ឃុំ បាសាក់', 'Basak Commune', '21403'),
    (
        '2.14.4',
        'ឃុំ មុខរាហ៍',
        'Mukh Rea Commune',
        '21404'
    ),
    (
        '2.14.5',
        'ឃុំ ស្តុកប្រវឹក',
        'Sdok Pravoek Commune',
        '21405'
    ),
    (
        '3',
        'ខេត្ត កំពង់ចាម',
        'Kampong Cham Province',
        '30000'
    ),
    (
        '3.1',
        'ស្រុក បាធាយ',
        'Batheay District',
        '30100'
    ),
    ('3.1.1', 'ឃុំ បាធាយ', 'Batheay Commune', '30101'),
    (
        '3.1.2',
        'ឃុំ ច្បារអំពៅ',
        'Chbar Ampov Commune',
        '30102'
    ),
    ('3.1.3', 'ឃុំ ជាលា', 'Chealea Commune', '30103'),
    (
        '3.1.4',
        'ឃុំ ជើងព្រៃ',
        'Cheung Prey Commune',
        '30104'
    ),
    (
        '3.1.5',
        'ឃុំ មេព្រីង',
        'Me Pring Commune',
        '30105'
    ),
    ('3.1.6', 'ឃុំ ផ្អាវ', 'Ph''av Commune', '30106'),
    ('3.1.7', 'ឃុំ សំបូរ', 'Sambour Commune', '30107'),
    (
        '3.1.8',
        'ឃុំ សណ្តែក',
        'Sandaek Commune',
        '30108'
    ),
    (
        '3.1.9',
        'ឃុំ តាំងក្រាំង',
        'Tang Krang Commune',
        '30109'
    ),
    (
        '3.1.10',
        'ឃុំ តាំងក្រសាំង',
        'Tang Krasang Commune',
        '30110'
    ),
    ('3.1.11', 'ឃុំ ត្រប់', 'Trab Commune', '30111'),
    ('3.1.12', 'ឃុំ ទំនប់', 'Tumnub Commune', '30112'),
    (
        '3.2',
        'ស្រុក ចំការលើ',
        'Chamkar Leu District',
        '30200'
    ),
    (
        '3.2.1',
        'ឃុំ បុសខ្នុរ',
        'Bos Khnor Commune',
        '30201'
    ),
    (
        '3.2.2',
        'ឃុំ ចំការអណ្តូង',
        'Chamkar Andoung Commune',
        '30202'
    ),
    ('3.2.3', 'ឃុំ ជយោ', 'Cheyyou Commune', '30203'),
    (
        '3.2.4',
        'ឃុំ ល្វាលើ',
        'Lvea Leu Commune',
        '30204'
    ),
    ('3.2.5', 'ឃុំ ស្ពឺ', 'Spueu Commune', '30205'),
    (
        '3.2.6',
        'ឃុំ ស្វាយទាប',
        'Svay Teab Commune',
        '30206'
    ),
    ('3.2.7', 'ឃុំ តាអុង', 'Ta Ong Commune', '30207'),
    (
        '3.2.8',
        'ឃុំ តាប្រុក',
        'Ta Prok Commune',
        '30208'
    ),
    (
        '3.3',
        'ស្រុក ជើងព្រៃ',
        'Cheung Prey District',
        '30300'
    ),
    (
        '3.3.1',
        'ឃុំ ខ្នុរដំបង',
        'Khnor Dambang Commune',
        '30301'
    ),
    (
        '3.3.2',
        'ឃុំ គោករវៀង',
        'Kouk Rovieng Commune',
        '30302'
    ),
    (
        '3.3.3',
        'ឃុំ ផ្តៅជុំ',
        'Phdau Chum Commune',
        '30303'
    ),
    (
        '3.3.4',
        'ឃុំ ព្រៃចារ',
        'Prey Char Commune',
        '30304'
    ),
    (
        '3.3.5',
        'ឃុំ ព្រីងជ្រុំ',
        'Pring Chrum Commune',
        '30305'
    ),
    (
        '3.3.6',
        'ឃុំ សំពងជ័យ',
        'Sampong Chey Commune',
        '30306'
    ),
    (
        '3.3.7',
        'ឃុំ ស្តើងជ័យ',
        'Sdaeung Chey Commune',
        '30307'
    ),
    ('3.3.8', 'ឃុំ សូទិប', 'Soutib Commune', '30308'),
    ('3.3.9', 'ឃុំ ស្រម៉រ', 'Sramar Commune', '30309'),
    (
        '3.3.10',
        'ឃុំ ត្រពាំងគរ',
        'Trapeang Kor Commune',
        '30310'
    ),
    (
        '3.4',
        'ក្រុង កំពង់ចាម',
        'Kampong Cham Municipality',
        '30500'
    ),
    (
        '3.4.1',
        'សង្កាត់ បឹងកុក',
        'Sangkat Boeng Kok',
        '30501'
    ),
    (
        '3.4.2',
        'សង្កាត់ កំពង់ចាម',
        'Sangkat Kampong Cham',
        '30502'
    ),
    (
        '3.4.3',
        'សង្កាត់ សំបួរមាស',
        'Sangkat Sambuor Meas',
        '30503'
    ),
    (
        '3.4.4',
        'សង្កាត់ វាលវង់',
        'Sangkat Veal Vung',
        '30504'
    ),
    (
        '3.5',
        'ស្រុក កំពង់សៀម',
        'Kampong Siem District',
        '30600'
    ),
    ('3.5.1', 'ឃុំ អំពិល', 'Ampil Commune', '30601'),
    (
        '3.5.2',
        'ឃុំ ហាន់ជ័យ',
        'Hanchey Commune',
        '30602'
    ),
    (
        '3.5.3',
        'ឃុំ កៀនជ្រៃ',
        'Kien Chrey Commune',
        '30603'
    ),
    ('3.5.4', 'ឃុំ គគរ', 'Kokor Commune', '30604'),
    (
        '3.5.5',
        'ឃុំ កោះមិត្ត',
        'Kaoh Mit Commune',
        '30605'
    ),
    (
        '3.5.6',
        'ឃុំ កោះរកា',
        'Kaoh Roka Commune',
        '30606'
    ),
    (
        '3.5.7',
        'ឃុំ កោះសំរោង',
        'Kaoh Samraong Commune',
        '30607'
    ),
    (
        '3.5.8',
        'ឃុំ កោះទន្ទឹម',
        'Kaoh Tontuem Commune',
        '30608'
    ),
    ('3.5.9', 'ឃុំ​ ក្រឡា', 'Krala Commune', '30609'),
    (
        '3.5.10',
        'ឃុំ អូរស្វាយ',
        'Ou Svay Commune',
        '30610'
    ),
    ('3.5.11', 'ឃុំ រអាង', 'Ro''ang Commune', '30611'),
    (
        '3.5.12',
        'ឃុំ រំចេក',
        'Rumchek Commune',
        '30612'
    ),
    ('3.5.13', 'ឃុំ ស្រក', 'Srak Commune', '30613'),
    ('3.5.14', 'ឃុំ ទ្រាន', 'Trean Commune', '30614'),
    (
        '3.5.15',
        'ឃុំ វិហារធំ',
        'Vihea Thum Commune',
        '30615'
    ),
    (
        '3.6',
        'ស្រុក កងមាស',
        'Kang Meas District',
        '30700'
    ),
    (
        '3.6.1',
        'ឃុំ អង្គរបាន',
        'Angkor Ban Commune',
        '30701'
    ),
    (
        '3.6.2',
        'ឃុំ កងតាណឹង',
        'Kang Ta Noeng Commune',
        '30702'
    ),
    ('3.6.3', 'ឃុំ ខ្ចៅ', 'Khchau Commune', '30703'),
    (
        '3.6.4',
        'ឃុំ ពាមជីកង',
        'Peam Chi Kang Commune',
        '30704'
    ),
    (
        '3.6.5',
        'ឃុំ ព្រែកកុយ',
        'Preaek Koy Commune',
        '30705'
    ),
    (
        '3.6.6',
        'ឃុំ ព្រែកក្របៅ',
        'Preaek Krabau Commune',
        '30706'
    ),
    (
        '3.6.7',
        'ឃុំ រាយប៉ាយ',
        'Reay Pay Commune',
        '30707'
    ),
    (
        '3.6.8',
        'ឃុំ រកាអារ',
        'Roka Ar Commune',
        '30708'
    ),
    (
        '3.6.9',
        'ឃុំ រកាគយ',
        'Roka Koy Commune',
        '30709'
    ),
    ('3.6.10', 'ឃុំ ស្តៅ', 'Sdau Commune', '30710'),
    (
        '3.6.11',
        'ឃុំ សូរគង',
        'Sou Kong Commune',
        '30711'
    ),
    (
        '3.7',
        'ស្រុក កោះសូទិន',
        'Kaoh Soutin District',
        '30800'
    ),
    (
        '3.7.1',
        'ឃុំ កំពង់រាប',
        'Kampong Reab Commune',
        '30801'
    ),
    (
        '3.7.2',
        'ឃុំ កោះសូទិន',
        'Kaoh Sotin Commune',
        '30802'
    ),
    ('3.7.3', 'ឃុំ ល្វេ', 'Lve Commune', '30803'),
    (
        '3.7.4',
        'ឃុំ មហាលាភ',
        'Moha Leaph Commune',
        '30804'
    ),
    (
        '3.7.5',
        'ឃុំ មហាខ្ញូង',
        'Moha Khnhoung Commune',
        '30805'
    ),
    (
        '3.7.6',
        'ឃុំ ពាមប្រធ្នោះ',
        'Peam Prathnuoh Commune',
        '30806'
    ),
    ('3.7.7', 'ឃុំ ពង្រ', 'Pungro Commune', '30807'),
    (
        '3.7.8',
        'ឃុំ ព្រែកតានង់',
        'Preaek Ta Nung Commune',
        '30808'
    ),
    (
        '3.8',
        'ស្រុក ព្រៃឈរ',
        'Prey Chhor District',
        '31300'
    ),
    ('3.8.1', 'ឃុំ បារាយណ៍', 'Baray Commune', '31301'),
    (
        '3.8.2',
        'ឃុំ បឹងណាយ',
        'Boeng Nay Commune',
        '31302'
    ),
    (
        '3.8.3',
        'ឃុំ ជ្រៃវៀន',
        'Chrey Vien Commune',
        '31303'
    ),
    (
        '3.8.4',
        'ឃុំ ខ្វិតធំ',
        'Khvet Thum Commune',
        '31304'
    ),
    ('3.8.5', 'ឃុំ គរ', 'Kor Commune', '31305'),
    ('3.8.6', 'ឃុំ ក្រូច', 'Krouch Commune', '31306'),
    ('3.8.7', 'ឃុំ ល្វា', 'Lvea Commune', '31307'),
    ('3.8.8', 'ឃុំ មៀន', 'Mien Commune', '31308'),
    (
        '3.8.9',
        'ឃុំ ព្រៃឈរ',
        'Prey Chhor Commune',
        '31309'
    ),
    (
        '3.8.10',
        'ឃុំ សូរសែន្យ',
        'Sou Saen Commune',
        '31310'
    ),
    (
        '3.8.11',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '31311'
    ),
    (
        '3.8.12',
        'ឃុំ ស្រង៉ែ',
        'Srangae Commune',
        '31312'
    ),
    (
        '3.8.13',
        'ឃុំ ថ្មពូន',
        'Thma Pun Commune',
        '31313'
    ),
    (
        '3.8.14',
        'ឃុំ តុងរ៉ុង',
        'Tong Rong Commune',
        '31314'
    ),
    (
        '3.8.15',
        'ឃុំ ត្រពាំងព្រះ',
        'Trapeang Preah Commune',
        '31315'
    ),
    (
        '3.9',
        'ស្រុក ស្រីសន្ធរ',
        'Srei Santhor District',
        '31400'
    ),
    ('3.9.1', 'ឃុំ បារាយណ៍', 'Baray Commune', '31401'),
    ('3.9.2', 'ឃុំ ជីបាល', 'Chi Bal Commune', '31402'),
    (
        '3.9.3',
        'ឃុំ ខ្នារស',
        'Khnar Sa Commune',
        '31403'
    ),
    (
        '3.9.4',
        'ឃុំ កោះអណ្តែត',
        'Kaoh Andaet Commune',
        '31404'
    ),
    (
        '3.9.5',
        'ឃុំ មានជ័យ',
        'Mean Chey Commune',
        '31405'
    ),
    (
        '3.9.6',
        'ឃុំ ផ្ទះកណ្តាល',
        'Phteah Kandal Commune',
        '31406'
    ),
    (
        '3.9.7',
        'ឃុំ ប្រាំយ៉ាម',
        'Pram Yam Commune',
        '31407'
    ),
    (
        '3.9.8',
        'ឃុំ ព្រែកដំបូក',
        'Preaek Dambouk Commune',
        '31408'
    ),
    (
        '3.9.9',
        'ឃុំ ព្រែកពោធិ',
        'Preaek Pou Commune',
        '31409'
    ),
    (
        '3.9.10',
        'ឃុំ ព្រែករំដេង',
        'Preaek Rumdeng Commune',
        '31410'
    ),
    (
        '3.9.11',
        'ឃុំ ឫស្សីស្រុក',
        'Ruessei Srok Commune',
        '31411'
    ),
    (
        '3.9.12',
        'ឃុំ ស្វាយពោធិ',
        'Svay Pou Commune',
        '31412'
    ),
    (
        '3.9.13',
        'ឃុំ ស្វាយខ្សាច់ភ្នំ',
        'Svay Khsach Phnum Commune',
        '31413'
    ),
    (
        '3.9.14',
        'ឃុំ ទងត្រឡាច',
        'Tong Tralach Commune',
        '31414'
    ),
    (
        '3.1',
        'ស្រុក ស្ទឹងត្រង់',
        'Stueng Trang District',
        '31500'
    ),
    (
        '3.10.1',
        'ឃុំ អារក្សត្នោត',
        'Areak Tnaot Commune',
        '31501'
    ),
    (
        '3.10.2',
        'ឃុំ ដងក្តារ',
        'Dang Kdar Commune',
        '31503'
    ),
    (
        '3.10.3',
        'ឃុំ ខ្ពបតាងួន',
        'Khpob Ta Nguon Commune',
        '31504'
    ),
    (
        '3.10.4',
        'ឃុំ មេសរជ្រៃ',
        'Me Sar Chrey Commune',
        '31505'
    ),
    (
        '3.10.5',
        'ឃុំ អូរម្លូ',
        'Ou Mlu Commune',
        '31506'
    ),
    (
        '3.10.6',
        'ឃុំ ពាមកោះស្នា',
        'Peam Kaoh Sna Commune',
        '31507'
    ),
    (
        '3.10.7',
        'ឃុំ ព្រះអណ្តូង',
        'Preah Andoung Commune',
        '31508'
    ),
    (
        '3.10.8',
        'ឃុំ ព្រែកបាក់',
        'Preaek Bak Commune',
        '31509'
    ),
    (
        '3.10.9',
        'ឃុំ ព្រែកកក់',
        'Preaek Kak Commune',
        '31510'
    ),
    (
        '3.10.10',
        'ឃុំ សូភាស',
        'Soupheas Commune',
        '31512'
    ),
    (
        '3.10.11',
        'ឃុំ ទួលព្រះឃ្លាំង',
        'Tuol Preah Khleang Commune',
        '31513'
    ),
    (
        '3.10.12',
        'ឃុំ ទួលសំបួរ',
        'Tuol Sambuor Commune',
        '31514'
    ),
    (
        '4',
        '​ខេត្ត កំពង់ឆ្នាំង',
        'Kampong Chhnang Province',
        '40000'
    ),
    (
        '4.1',
        'ស្រុក បរិបូរណ៍',
        'Baribour District',
        '40100'
    ),
    (
        '4.1.1',
        'ឃុំ អញ្ចាញរូង',
        'Anhchanh Rung Commune',
        '40101'
    ),
    (
        '4.1.2',
        'ឃុំ ឆ្នុកទ្រូ',
        'Chhnok Tru Commune',
        '40102'
    ),
    ('4.1.3', 'ឃុំ ចក', 'Chak Commune', '40103'),
    (
        '4.1.4',
        'ឃុំ ខុនរ៉ង',
        'Khon Rang Commune',
        '40104'
    ),
    (
        '4.1.5',
        'ឃុំ កំពង់ព្រះគគីរ',
        'Kampong Preah Kokir Commune',
        '40105'
    ),
    ('4.1.6', 'ឃុំ មេលំ', 'Melum Commune', '40106'),
    ('4.1.7', 'ឃុំ ផ្សារ', 'Phsar Commune', '40107'),
    (
        '4.1.8',
        'ឃុំ ពេជចង្វារ',
        'Pech Changvar Commune',
        '40108'
    ),
    ('4.1.9', 'ឃុំ ពពេល', 'Popel Commune', '40109'),
    ('4.1.10', 'ឃុំ ពន្លៃ', 'Punley Commune', '40110'),
    (
        '4.1.11',
        'ឃុំ ត្រពាំងចាន់',
        'Trapeang Chan Commune',
        '40111'
    ),
    (
        '4.2',
        'ស្រុក ជលគិរី',
        'Chul Kiri District',
        '40200'
    ),
    ('4.2.1', 'ឃុំ ជលសា', 'Chul Sar Commune', '40201'),
    (
        '4.2.2',
        'ឃុំ កោះថ្កូវ',
        'Kaoh Thkouv Commune',
        '40202'
    ),
    (
        '4.2.3',
        'ឃុំ កំពង់អុស',
        'Kampong Os Commune',
        '40203'
    ),
    (
        '4.2.4',
        'ឃុំ ពាមឆ្កោក',
        'Peam Chhkaok Commune',
        '40204'
    ),
    (
        '4.2.5',
        'ឃុំ ព្រៃគ្រី',
        'Prey Kri Commune',
        '40205'
    ),
    (
        '4.3',
        'ក្រុង កំពង់ឆ្នាំង',
        'Kampong Chhnang Municipality',
        '40300'
    ),
    (
        '4.3.1',
        'សង្កាត់ ផ្សារឆ្នាំង',
        'Sangkat Phsar Chhnang',
        '40301'
    ),
    (
        '4.3.2',
        'សង្កាត់ កំពង់ឆ្នាំង',
        'Sangkat Kampong Chhnang',
        '40302'
    ),
    (
        '4.3.3',
        'សង្កាត់ ប្អេរ',
        'Sangkat B''e',
        '40303'
    ),
    (
        '4.3.4',
        'សង្កាត់ ខ្សាម',
        'Sangkat Khsam',
        '40304'
    ),
    (
        '4.4',
        'ស្រុក កំពង់លែង',
        'Kampong Leaeng District',
        '40400'
    ),
    (
        '4.4.1',
        'ឃុំ ច្រណូក',
        'Chranouk Commune',
        '40401'
    ),
    ('4.4.2', 'ឃុំ ដារ', 'Dar Commune', '40402'),
    (
        '4.4.3',
        'ឃុំ កំពង់ហៅ',
        'Kampong Hau Commune',
        '40403'
    ),
    (
        '4.4.4',
        'ឃុំ ផ្លូវទូក',
        'Phlouv Tuk Commune',
        '40404'
    ),
    ('4.4.5', 'ឃុំ ពោធិ៍', 'Pou Commune', '40405'),
    (
        '4.4.6',
        'ឃុំ ប្រឡាយមាស',
        'Pralay Meas Commune',
        '40406'
    ),
    (
        '4.4.7',
        'ឃុំ សំរោងសែន',
        'Samraong Saen Commune',
        '40407'
    ),
    (
        '4.4.8',
        'ឃុំ ស្វាយរំពារ',
        'Svay Rumpear Commune',
        '40408'
    ),
    (
        '4.4.9',
        'ឃុំ ត្រងិល',
        'Trangel Commune',
        '40409'
    ),
    (
        '4.5',
        'ស្រុក កំពង់ត្រឡាច',
        'Kampong Tralach District',
        '40500'
    ),
    (
        '4.5.1',
        'ឃុំ អំពិលទឹក',
        'Ampil Tuek Commune',
        '40501'
    ),
    ('4.5.2', 'ឃុំ ឈូកស', 'Chhuk Sa Commune', '40502'),
    ('4.5.3', 'ឃុំ​ ច្រេស', 'Chres Commune', '40503'),
    (
        '4.5.4',
        'ឃុំ កំពង់ត្រឡាច',
        'Kampong Tralach Commune',
        '40504'
    ),
    (
        '4.5.5',
        'ឃុំ លង្វែក',
        'Lungveaek Commune',
        '40505'
    ),
    (
        '4.5.6',
        'ឃុំ អូរឫស្សី',
        'Ou Ruessei Commune',
        '40506'
    ),
    ('4.5.7', 'ឃុំ ពានី', 'Peani Commune', '40507'),
    ('4.5.8', 'ឃុំ សែប', 'Saeb Commune', '40508'),
    ('4.5.9', 'ឃុំ តាជេស', 'Ta Ches Commune', '40509'),
    (
        '4.5.10',
        'ឃុំ ថ្មឥដ្ឋ',
        'Thma Ed Commune',
        '40510'
    ),
    (
        '4.6',
        'ស្រុក រលាប្អៀរ',
        'Rolea B''ier District',
        '40600'
    ),
    (
        '4.6.1',
        'ឃុំ អណ្តូងស្នាយ',
        'Andoung Snay Commune',
        '40601'
    ),
    (
        '4.6.2',
        'ឃុំ បន្ទាយព្រាល',
        'Banteay Preal Commune',
        '40602'
    ),
    (
        '4.6.3',
        'ឃុំ ជើងគ្រាវ',
        'Cheung Kreav Commune',
        '40603'
    ),
    (
        '4.6.4',
        'ឃុំ ជ្រៃបាក់',
        'Chrey Bak Commune',
        '40604'
    ),
    (
        '4.6.5',
        'ឃុំ គោកបន្ទាយ',
        'Kouk Banteay Commune',
        '40605'
    ),
    (
        '4.6.6',
        'ឃុំ ក្រាំងលាវ',
        'Krang Leav Commune',
        '40606'
    ),
    ('4.6.7', 'ឃុំ ពង្រ', 'Pungro Commune', '40607'),
    (
        '4.6.8',
        'ឃុំ ប្រស្នឹប',
        'Prasnoeb Commune',
        '40608'
    ),
    (
        '4.6.9',
        'ឃុំ ព្រៃមូល',
        'Prey Mul Commune',
        '40609'
    ),
    (
        '4.6.10',
        'ឃុំ រលាប្អៀរ',
        'Rolea B''ier Commune',
        '40610'
    ),
    (
        '4.6.11',
        'ឃុំ ស្រែថ្មី',
        'Srae Thmei Commune',
        '40611'
    ),
    (
        '4.6.12',
        'ឃុំ ស្វាយជ្រុំ',
        'Svay Chrum Commune',
        '40612'
    ),
    (
        '4.6.13',
        'ឃុំ ទឹកហូត',
        'Tuek Hout Commune',
        '40613'
    ),
    (
        '4.6.14',
        'ឃុំ ភ្នំក្រាំងដីមាស',
        'Phnum Krang Dei meas Commune',
        '40614'
    ),
    (
        '4.7',
        'ស្រុក សាមគ្គីមានជ័យ',
        'Sammeakki Mean Chey District',
        '40700'
    ),
    (
        '4.7.1',
        'ឃុំ ឈានឡើង',
        'Chhean Laeung Commune',
        '40701'
    ),
    (
        '4.7.2',
        'ឃុំ ខ្នារឆ្មារ',
        'Khna Chhmar Commune',
        '40702'
    ),
    (
        '4.7.3',
        'ឃុំ ក្រាំងល្វា',
        'Krang Lvea Commune',
        '40703'
    ),
    ('4.7.4', 'ឃុំ ពាម', 'Peam Commune', '40704'),
    (
        '4.7.5',
        'ឃុំ សេដ្ឋី',
        'Sedthei Commune',
        '40705'
    ),
    ('4.7.6', 'ឃុំ ស្វាយ', 'Svay Commune', '40706'),
    (
        '4.7.7',
        'ឃុំ ស្វាយជុក',
        'Svay Chuk Commune',
        '40707'
    ),
    (
        '4.7.8',
        'ឃុំ ត្បែងខ្ពស់',
        'Tbaeng Khpuos Commune',
        '40708'
    ),
    (
        '4.7.9',
        'ឃុំ ធ្លកវៀន',
        'Thlok Vien Commune',
        '40709'
    ),
    (
        '4.8',
        'ស្រុក ទឹកផុស',
        'Tuek Phos District',
        '40800'
    ),
    (
        '4.8.1',
        'ឃុំ អភិវឌ្ឍន៍',
        'Akphivoad Commune',
        '40801'
    ),
    ('4.8.2', 'ឃុំ ជៀប', 'Chieb Commune', '40802'),
    (
        '4.8.3',
        'ឃុំ ចោងម៉ោង',
        'Chaong Maong Commune',
        '40803'
    ),
    (
        '4.8.4',
        'ឃុំ ក្បាលទឹក',
        'Kbal Tuek Commune',
        '40804'
    ),
    (
        '4.8.5',
        'ឃុំ ខ្លុងពពក',
        'Khlong Popok Commune',
        '40805'
    ),
    (
        '4.8.6',
        'ឃុំ ក្រាំងស្គារ',
        'Krang Skear Commune',
        '40806'
    ),
    (
        '4.8.7',
        'ឃុំ តាំងក្រសាំង',
        'Tang Krasang Commune',
        '40807'
    ),
    (
        '4.8.8',
        'ឃុំ ទួលខ្ពស់',
        'Tuol Khpuos Commune',
        '40808'
    ),
    (
        '4.8.9',
        'ឃុំ ក្តុលសែនជ័យ',
        'Kdol Saen Chey Commune',
        '40809'
    ),
    (
        '5',
        'ខេត្ត កំពង់ស្ពឺ',
        'Kampong Speu Province',
        '50000'
    ),
    (
        '5.1',
        'ស្រុក បសេដ្ឋ',
        'Basaed District',
        '50100'
    ),
    ('5.1.1', 'ឃុំ បសេដ្ឋ', 'Basaed Commune', '50101'),
    (
        '5.1.2',
        'ឃុំ កាត់ភ្លុក',
        'Kat Phluk Commune',
        '50102'
    ),
    ('5.1.3', 'ឃុំ និទាន', 'Nitean Commune', '50103'),
    (
        '5.1.4',
        'ឃុំ ភក្តី',
        'Pheakdei Commune',
        '50104'
    ),
    (
        '5.1.5',
        'ឃុំ ភារីមានជ័យ',
        'Pheari Mean Chey Commune',
        '50105'
    ),
    ('5.1.6', 'ឃុំ ផុង', 'Phong Commune', '50106'),
    (
        '5.1.7',
        'ឃុំ ពោធិអង្ក្រង',
        'Pou Angkrang Commune',
        '50107'
    ),
    (
        '5.1.8',
        'ឃុំ ពោធិ៍ចំរើន',
        'Pou Chamraeun Commune',
        '50108'
    ),
    (
        '5.1.9',
        'ឃុំ ពោធិ៍ម្រាល',
        'Pou Mreal Commune',
        '50109'
    ),
    (
        '5.1.10',
        'ឃុំ ស្វាយចចិប',
        'Svay Chacheb Commune',
        '50110'
    ),
    (
        '5.1.11',
        'ឃុំ ទួលអំពិល',
        'Tuol Ampil Commune',
        '50111'
    ),
    (
        '5.1.12',
        'ឃុំ ទួលសាលា',
        'Tuol Sala Commune',
        '50112'
    ),
    ('5.1.13', 'ឃុំ កក់', 'Kak Commune', '50113'),
    (
        '5.1.14',
        'ឃុំ ស្វាយរំពារ',
        'Svay Rumpear Commune',
        '50114'
    ),
    (
        '5.1.15',
        'ឃុំ ព្រះខែ',
        'Preah Khae Commune',
        '50115'
    ),
    (
        '5.2',
        'ក្រុង ច្បារមន',
        'Chbar Mon Municipality',
        '50200'
    ),
    (
        '5.2.1',
        'សង្កាត់ ច្បារមន',
        'Sangkat Chbar Mon',
        '50201'
    ),
    (
        '5.2.2',
        'សង្កាត់ កណ្តោលដុំ',
        'Sangkat Kandaol Dom',
        '50202'
    ),
    (
        '5.2.3',
        'សង្កាត់ រការធំ',
        'Sangkat Rokar Thum',
        '50203'
    ),
    (
        '5.2.4',
        'សង្កាត់ សុព័រទេព',
        'Sangkat Sopoar Tep',
        '50204'
    ),
    (
        '5.2.5',
        'សង្កាត់ ស្វាយក្រវ៉ាន់',
        'Sangkat Svay Kravan',
        '50205'
    ),
    (
        '5.3',
        'ស្រុក គងពិសី',
        'Kong Pisei District',
        '50300'
    ),
    (
        '5.3.1',
        'ឃុំ អង្គពពេល',
        'Ang Popel Commune',
        '50301'
    ),
    (
        '5.3.2',
        'ឃុំ ជង្រុក',
        'Chungruk Commune',
        '50302'
    ),
    (
        '5.3.3',
        'ឃុំ មហាឫស្សី',
        'Moha Ruessei Commune',
        '50303'
    ),
    (
        '5.3.4',
        'ឃុំ ពេជ្រមុនី',
        'Pech Muni Commune',
        '50304'
    ),
    (
        '5.3.5',
        'ឃុំ ព្រះនិព្វាន',
        'Preah Nipean Commune',
        '50305'
    ),
    (
        '5.3.6',
        'ឃុំ ព្រៃញាតិ',
        'Prey Nheat Commune',
        '50306'
    ),
    (
        '5.3.7',
        'ឃុំ ព្រៃវិហារ',
        'Prey Vihea Commune',
        '50307'
    ),
    (
        '5.3.8',
        'ឃុំ រកាកោះ',
        'Roka Kaoh Commune',
        '50308'
    ),
    ('5.3.9', 'ឃុំ ស្តុក', 'Sdok Commune', '50309'),
    (
        '5.3.10',
        'ឃុំ ស្នំក្រពើ',
        'Snam Krapeu Commune',
        '50310'
    ),
    ('5.3.11', 'ឃុំ ស្រង់', 'Srang Commune', '50311'),
    (
        '5.3.12',
        'ឃុំ ទឹកល្អក់',
        'Tuek L''ak Commune',
        '50312'
    ),
    ('5.3.13', 'ឃុំ វាល', 'Veal Commune', '50313'),
    ('5.4', 'ស្រុក ឱរ៉ាល់', 'Aoral District', '50400'),
    (
        '5.4.1',
        'ឃុំ ហោងសំណំ',
        'Haong Samnam Commune',
        '50401'
    ),
    (
        '5.4.2',
        'ឃុំ រស្មីសាមគ្គី',
        'Reaksmei Sammeakki Commune',
        '50402'
    ),
    (
        '5.4.3',
        'ឃុំ ត្រពាំងជោ',
        'Trapeang Chou Commune',
        '50403'
    ),
    (
        '5.4.4',
        'ឃុំ សង្កែសាទប',
        'Sangkae Satob Commune',
        '50404'
    ),
    ('5.4.5', 'ឃុំ តាសាល', 'Ta Sal Commune', '50405'),
    (
        '5.5',
        'ស្រុក ភ្នំស្រួច',
        'Phnum Sruoch District',
        '50600'
    ),
    ('5.5.1', 'ឃុំ ចំបក់', 'Chambak Commune', '50601'),
    (
        '5.5.2',
        'ឃុំ ជាំសង្កែ',
        'Choam Sangkae Commune',
        '50602'
    ),
    (
        '5.5.3',
        'ឃុំ ដំបូករូង',
        'Dambouk Rung Commune',
        '50603'
    ),
    (
        '5.5.4',
        'ឃុំ គិរីវន្ត',
        'Kiri Voan Commune',
        '50604'
    ),
    (
        '5.5.5',
        'ឃុំ ក្រាំងដីវ៉ាយ',
        'Krang Dei Vay Commune',
        '50605'
    ),
    (
        '5.5.6',
        'ឃុំ មហាសាំង',
        'Moha Sang Commune',
        '50606'
    ),
    ('5.5.7', 'ឃុំ អូរ', 'Ou Commune', '50607'),
    (
        '5.5.8',
        'ឃុំ ព្រៃរំដួល',
        'Prey Rumduol Commune',
        '50608'
    ),
    (
        '5.5.9',
        'ឃុំ ព្រៃក្មេង',
        'Prey Kmeng Commune',
        '50609'
    ),
    (
        '5.5.10',
        'ឃុំ តាំងសំរោង',
        'Tang Samraong Commune',
        '50610'
    ),
    (
        '5.5.11',
        'ឃុំ តាំងស្យា',
        'Tang Sya Commune',
        '50611'
    ),
    (
        '5.5.12',
        'ឃុំ ត្រែងត្រយឹង',
        'Traeng Trayueng Commune',
        '50613'
    ),
    (
        '5.5.13',
        'ឃុំ យាយម៉ៅពេជ្រនិល',
        'Yeay Mau Pech Nil Commune',
        '50614'
    ),
    (
        '5.6',
        'ស្រុក សំរោងទង',
        'Samraong Tong District',
        '50700'
    ),
    (
        '5.6.1',
        'ឃុំ រលាំងចក',
        'Roleang Chak Commune',
        '50701'
    ),
    ('5.6.2', 'ឃុំ កាហែង', 'Kahaeng Commune', '50702'),
    (
        '5.6.3',
        'ឃុំ ខ្ទុំក្រាំង',
        'Khtum Krang Commune',
        '50703'
    ),
    (
        '5.6.4',
        'ឃុំ ក្រាំងអំពិល',
        'Krang Ampil Commune',
        '50704'
    ),
    ('5.6.5', 'ឃុំ ព្នាយ', 'Pneay Commune', '50705'),
    (
        '5.6.6',
        'ឃុំ រលាំងគ្រើល',
        'Roleang Kreul Commune',
        '50706'
    ),
    (
        '5.6.7',
        'ឃុំ សំរោងទង',
        'Samraong Tong Commune',
        '50707'
    ),
    ('5.6.8', 'ឃុំ សំបូរ', 'Sambour Commune', '50708'),
    (
        '5.6.9',
        'ឃុំ សែនដី',
        'Saen Dei Commune',
        '50709'
    ),
    ('5.6.10', 'ឃុំ ស្គុះ', 'Skuh Commune', '50710'),
    (
        '5.6.11',
        'ឃុំ តាំងក្រូច',
        'Tang Krouch Commune',
        '50711'
    ),
    (
        '5.6.12',
        'ឃុំ ធម្មតាអរ',
        'Thoam Ta Ar Commune',
        '50712'
    ),
    (
        '5.6.13',
        'ឃុំ ត្រពាំងគង',
        'Trapeang Kong Commune',
        '50713'
    ),
    (
        '5.6.14',
        'ឃុំ ទំព័រមាស',
        'Tumpoar Meas Commune',
        '50714'
    ),
    (
        '5.6.15',
        'ឃុំ វល្លិសរ',
        'Voa Sar Commune',
        '50715'
    ),
    ('5.7', 'ស្រុក ថ្ពង', 'Thpong District', '50800'),
    (
        '5.7.1',
        'ឃុំ អមលាំង',
        'Amleang Commune',
        '50801'
    ),
    (
        '5.7.2',
        'ឃុំ មនោរម្យ',
        'Meaknourum Commune',
        '50802'
    ),
    (
        '5.7.3',
        'ឃុំ ប្រាំបីមុម',
        'Prambei Mum Commune',
        '50804'
    ),
    (
        '5.7.4',
        'ឃុំ រុងរឿង',
        'Rung Roeang Commune',
        '50805'
    ),
    (
        '5.7.5',
        'ឃុំ ទ័ពមាន',
        'Toap Mean Commune',
        '50806'
    ),
    (
        '5.7.6',
        'ឃុំ វាលពន់',
        'Veal Pun Commune',
        '50807'
    ),
    (
        '5.7.7',
        'ឃុំ យាអង្គ',
        'Yea Ang Commune',
        '50808'
    ),
    (
        '5.8',
        'ក្រុង ឧដុង្គម៉ែជ័យ',
        'Odong Mae Chey Municipality',
        '50900'
    ),
    (
        '5.8.1',
        'សង្កាត់ វាំងចាស់',
        'Sangkat Veang Chas',
        '50901'
    ),
    (
        '5.8.2',
        'សង្កាត់ វាលពង់',
        'Sangkat Veal Pung',
        '50902'
    ),
    (
        '5.8.3',
        'សង្កាត់ ត្រាចទង',
        'Sangkat Trach Tong',
        '50903'
    ),
    (
        '5.8.4',
        'សង្កាត់ ព្រះស្រែ',
        'Sangkat Preah Srae',
        '50904'
    ),
    (
        '5.8.5',
        'សង្កាត់ ក្សេមក្សាន្ត',
        'Sangkat Khsem Khsan',
        '50905'
    ),
    (
        '5.9',
        'ស្រុក សាមគ្គីមុនីជ័យ',
        'Sammeakki Muni Chey District',
        '51000'
    ),
    (
        '5.9.1',
        'ឃុំ ចាន់សែន',
        'Chan Saen Commune',
        '51001'
    ),
    (
        '5.9.2',
        'ឃុំ ជើងរាស់',
        'Cheung Roas Commune',
        '51002'
    ),
    (
        '5.9.3',
        'ឃុំ ជំពូព្រឹក្ស',
        'Chumpu Proek Commune',
        '51003'
    ),
    (
        '5.9.4',
        'ឃុំ ក្រាំងចេក',
        'Krang Chek Commune',
        '51004'
    ),
    (
        '5.9.5',
        'ឃុំ ​មានជ័យ',
        'Mean Chey Commune',
        '51005'
    ),
    (
        '5.9.6',
        'ឃុំ ព្រៃក្រសាំង',
        'Prey Krasang Commune',
        '51006'
    ),
    (
        '5.9.7',
        'ឃុំ យុទ្ឋសាមគ្គី',
        'Yut Sammeakki Commune',
        '51007'
    ),
    (
        '5.9.8',
        'ឃុំ ដំណាក់រាំង',
        'Damnak Reang Commune',
        '51008'
    ),
    (
        '5.9.9',
        'ឃុំ ពាំងល្វា',
        'Peang Lvea Commune',
        '51009'
    ),
    (
        '5.9.10',
        'ឃុំ ភ្នំតូច',
        'Phnum Touch Commune',
        '51010'
    ),
    (
        '6',
        'ខេត្ត កំពង់ធំ',
        'Kampong Thom Province',
        '60000'
    ),
    (
        '6.1',
        'ស្រុក បារាយណ៍',
        'Baray District',
        '60100'
    ),
    (
        '6.1.1',
        'ឃុំ បាក់ស្នា',
        'Bak Sna Commune',
        '60101'
    ),
    (
        '6.1.2',
        'ឃុំ បល្ល័ង្គ',
        'Ballang Commune',
        '60102'
    ),
    ('6.1.3', 'ឃុំ បារាយណ៍', 'Baray Commune', '60103'),
    ('6.1.4', 'ឃុំ បឹង', 'Boeng Commune', '60104'),
    (
        '6.1.5',
        'ឃុំ ចើងដើង',
        'Chaeung Daeung Commune',
        '60105'
    ),
    (
        '6.1.6',
        'ឃុំ ឈូកខ្សាច់',
        'Chhuk Khsach Commune',
        '60107'
    ),
    (
        '6.1.7',
        'ឃុំ ចុងដូង',
        'Chong Doung Commune',
        '60108'
    ),
    (
        '6.1.8',
        'ឃុំ គគីធំ',
        'Kokir Thum Commune',
        '60110'
    ),
    ('6.1.9', 'ឃុំ ក្រវ៉ា', 'Krava Commune', '60111'),
    ('6.1.10', 'ឃុំ ត្នោតជុំ', 'Tnaot Chum', '60117'),
    (
        '6.2',
        'ស្រុក កំពង់ស្វាយ',
        'Kampong Svay District',
        '60200'
    ),
    ('6.2.1', 'ឃុំ ជ័យ', 'Chey Commune', '60201'),
    (
        '6.2.2',
        'ឃុំ ដំរីស្លាប់',
        'Damrei Slab Commune',
        '60202'
    ),
    (
        '6.2.3',
        'ឃុំ កំពង់គោ',
        'Kampong Kou Commune',
        '60203'
    ),
    (
        '6.2.4',
        'ឃុំ កំពង់ស្វាយ',
        'Kampong Svay Commune',
        '60204'
    ),
    ('6.2.5', 'ឃុំ នីពេជ', 'Nipech Commune', '60205'),
    (
        '6.2.6',
        'ឃុំ ផាត់សណ្តាយ',
        'Phat Sanday Commune',
        '60206'
    ),
    ('6.2.7', 'ឃុំ សាន់គ', 'San Ko Commune', '60207'),
    ('6.2.8', 'ឃុំ ត្បែង', 'Tbaeng Commune', '60208'),
    (
        '6.2.9',
        'ឃុំ ត្រពាំងឫស្សី',
        'Trapeang Ruessei Commune',
        '60209'
    ),
    (
        '6.2.10',
        'ឃុំ ក្តីដូង',
        'Kdei Doung Commune',
        '60210'
    ),
    (
        '6.2.11',
        'ឃុំ ព្រៃគុយ',
        'Prey Kuy Commune',
        '60211'
    ),
    (
        '6.3',
        'ក្រុង ស្ទឹងសែន',
        'Stueng Saen Municipality',
        '60300'
    ),
    (
        '6.3.1',
        'សង្កាត់ ដំរីជាន់ខ្លា',
        'Sangkat Damrei Choan Khla',
        '60301'
    ),
    (
        '6.3.2',
        'សង្កាត់ កំពង់ធំ',
        'Sangkat Kampong Thum',
        '60302'
    ),
    (
        '6.3.3',
        'សង្កាត់ កំពង់រទេះ',
        'Sangkat Kampong Roteh',
        '60303'
    ),
    (
        '6.3.4',
        'សង្កាត់ អូរកន្ធរ',
        'Sangkat Ou Kanthor',
        '60304'
    ),
    (
        '6.3.5',
        'សង្កាត់ កំពង់ក្របៅ',
        'Sangkat Kampong Krabau',
        '60306'
    ),
    (
        '6.3.6',
        'សង្កាត់ ព្រៃតាហ៊ូ',
        'Sangkat Prey Ta Hu',
        '60308'
    ),
    (
        '6.3.7',
        'សង្កាត់ អាចារ្យលាក់',
        'Sangkat Achar Leak',
        '60309'
    ),
    (
        '6.3.8',
        'សង្កាត់ ស្រយ៉ូវ',
        'Sangkat Srayouv',
        '60310'
    ),
    (
        '6.4',
        'ស្រុក ប្រាសាទបល្ល័ង្គ',
        'Prasat Ballang District',
        '60400'
    ),
    ('6.4.1', 'ឃុំ ដូង', 'Doung Commune', '60401'),
    ('6.4.2', 'ឃុំ ក្រយា', 'Kraya Commune', '60402'),
    (
        '6.4.3',
        'ឃុំ ផាន់ញើម',
        'Phan Nheum Commune',
        '60403'
    ),
    (
        '6.4.4',
        'ឃុំ សាគ្រាម',
        'Sa Kream Commune',
        '60404'
    ),
    (
        '6.4.5',
        'ឃុំ សាលាវិស័យ',
        'Sala Visai Commune',
        '60405'
    ),
    (
        '6.4.6',
        'ឃុំ សាមគ្គី',
        'Sammeakki Commune',
        '60406'
    ),
    (
        '6.4.7',
        'ឃុំ ទួលគ្រើល',
        'Tuol Kreul Commune',
        '60407'
    ),
    (
        '6.5',
        'ស្រុក ប្រាសាទសំបូរ',
        'Prasat Sambour District',
        '60500'
    ),
    ('6.5.1', 'ឃុំ ឈូក', 'Chhuk Commune', '60501'),
    ('6.5.2', 'ឃុំ គោល', 'Koul Commune', '60502'),
    (
        '6.5.3',
        'ឃុំ សំបូរណ៍',
        'Sambour Commune',
        '60503'
    ),
    ('6.5.4', 'ឃុំ ស្រើង', 'Sraeung Commune', '60504'),
    (
        '6.5.5',
        'ឃុំ តាំងក្រសៅ',
        'Tang Krasau Commune',
        '60505'
    ),
    (
        '6.6',
        'ស្រុក សណ្តាន់',
        'Sandan District',
        '60600'
    ),
    (
        '6.6.1',
        'ឃុំ ឈើទាល',
        'Chheu Teal Commune',
        '60601'
    ),
    (
        '6.6.2',
        'ឃុំ ដងកាំបិត',
        'Dang Kambet Commune',
        '60602'
    ),
    ('6.6.3', 'ឃុំ ក្លែង', 'Klaeng Commune', '60603'),
    (
        '6.6.4',
        'ឃុំ មានរិទ្ធ',
        'Mean Rit Commune',
        '60604'
    ),
    (
        '6.6.5',
        'ឃុំ មានជ័យ',
        'Mean Chey Commune',
        '60605'
    ),
    ('6.6.6', 'ឃុំ ងន', 'Ngon Commune', '60606'),
    (
        '6.6.7',
        'ឃុំ សណ្តាន់',
        'Sandan Commune',
        '60607'
    ),
    (
        '6.6.8',
        'ឃុំ សុចិត្រ',
        'Sochet Commune',
        '60608'
    ),
    (
        '6.6.9',
        'ឃុំ ទំរីង',
        'Tum Ring Commune',
        '60609'
    ),
    (
        '6.7',
        'ស្រុក សន្ទុក',
        'Santuk District',
        '60700'
    ),
    (
        '6.7.1',
        'ឃុំ ​បឹងល្វា',
        'Boeng Lvea Commune',
        '60701'
    ),
    ('6.7.2', 'ឃុំ ជ្រាប់', 'Chroab Commune', '60702'),
    (
        '6.7.3',
        'ឃុំ​ កំពង់ថ្ម',
        'Kampong Thma Commune',
        '60703'
    ),
    ('6.7.4', 'ឃុំ កកោះ', 'Kakaoh Commune', '60704'),
    ('6.7.5', 'ឃុំ ក្រយា', 'Kraya Commune', '60705'),
    ('6.7.6', 'ឃុំ ព្នៅ', 'Pnov Commune', '60706'),
    (
        '6.7.7',
        'ឃុំ ប្រាសាទ',
        'Prasat Commune',
        '60707'
    ),
    (
        '6.7.8',
        'ឃុំ តាំងក្រសាំង',
        'Tang Krasang Commune',
        '60708'
    ),
    ('6.7.9', 'ឃុំ ទីពោ', 'Ti Pou Commune', '60709'),
    (
        '6.7.10',
        'ឃុំ ត្បូងក្រពើ',
        'Tboung Krapeu Commune',
        '60710'
    ),
    ('6.8', 'ស្រុក ស្ទោង', 'Stoung District', '60800'),
    (
        '6.8.1',
        'ឃុំ​ បន្ទាយស្ទោង',
        'Banteay Stoung Commune',
        '60801'
    ),
    (
        '6.8.2',
        'ឃុំ ចំណាក្រោម',
        'Chamna Kraom Commune',
        '60802'
    ),
    (
        '6.8.3',
        'ឃុំ ចំណាលើ',
        'Chamna Leu Commune',
        '60803'
    ),
    (
        '6.8.4',
        'ឃុំ កំពង់ចិនជើង',
        'Kampong Chen Cheung Commune',
        '60804'
    ),
    (
        '6.8.5',
        'ឃុំ កំពង់ចិនត្បូង',
        'Kampong Chen Tboung Commune',
        '60805'
    ),
    (
        '6.8.6',
        'ឃុំ ម្សាក្រង',
        'Msa Krang Commune',
        '60806'
    ),
    (
        '6.8.7',
        'ឃុំ ពាមបាង',
        'Peam Bang Commune',
        '60807'
    ),
    ('6.8.8', 'ឃុំ ពពក', 'Popok Commune', '60808'),
    ('6.8.9', 'ឃុំ ប្រឡាយ', 'Pralay Commune', '60809'),
    (
        '6.8.10',
        'ឃុំ ព្រះដំរី',
        'Preah Damrei Commune',
        '60810'
    ),
    (
        '6.8.11',
        'ឃុំ រុងរឿង',
        'Rung Roeang Commune',
        '60811'
    ),
    (
        '6.8.12',
        'ឃុំ សំព្រោជ',
        'Samprouch Commune',
        '60812'
    ),
    ('6.8.13', 'ឃុំ ទ្រា', 'Trea Commune', '60813'),
    (
        '6.9',
        'ស្រុក តាំងគោក',
        'Tang kouk District',
        '60900'
    ),
    ('6.9.1', 'ឃុំ ពង្រ', 'Pungro Commune', '60901'),
    (
        '6.9.2',
        'ឃុំ ច្រនាង',
        'Chraneang Commune',
        '60902'
    ),
    (
        '6.9.3',
        'ឃុំ ជ្រលង',
        'Chrolong Commune',
        '60903'
    ),
    ('6.9.4', 'ឃុំ ទ្រៀល', 'Triel Commune', '60904'),
    (
        '6.9.5',
        'ឃុំ សូយោង',
        'Sou Young Commune',
        '60905'
    ),
    ('6.9.6', 'ឃុំ ស្រឡៅ', 'Sralau Commune', '60906'),
    (
        '6.9.7',
        'ឃុំ ស្វាយភ្លើង',
        'Svay Phleung Commune',
        '60907'
    ),
    (
        '6.9.8',
        'ឃុំ អណ្តូងពោធិ៍',
        'Andoung Pou Commune',
        '60908'
    ),
    ('7', '​ខេត្ត កំពត', 'Kampot Province', '70000'),
    (
        '7.1',
        'ស្រុក អង្គរជ័យ',
        'Angkor Chey District',
        '70100'
    ),
    (
        '7.1.1',
        '​ឃុំ អង្គភ្នំតូច',
        'Ang Phnum Touch Commune',
        '70101'
    ),
    (
        '7.1.2',
        'ឃុំ អង្គរជ័យ',
        'Angkor Chey Commune',
        '70102'
    ),
    ('7.1.3', 'ឃុំ ចំប៉ី', 'Champei Commune', '70103'),
    (
        '7.1.4',
        'ឃុំ ​ដំបូកខ្ពស់',
        'Dambouk Khpuos Commune',
        '70104'
    ),
    (
        '7.1.5',
        'ឃុំ ដានគោម',
        'Dan Koum Commune',
        '70105'
    ),
    (
        '7.1.6',
        'ឃុំ ដើមដូង',
        'Daeum Doung Commune',
        '70106'
    ),
    ('7.1.7', 'ឃុំ ម្រោម', 'Mroum Commune', '70107'),
    (
        '7.1.8',
        'ឃុំ ភ្នំកុង',
        'Phnum Kong Commune',
        '70108'
    ),
    (
        '7.1.9',
        'ឃុំ ប្រភ្នំ',
        'Praphnum Commune',
        '70109'
    ),
    (
        '7.1.10',
        'ឃុំ សំឡាញ',
        'Samlanh Commune',
        '70110'
    ),
    ('7.1.11', 'ឃុំ តានី', 'Tani Commune', '70111'),
    (
        '7.2',
        'ស្រុក បន្ទាយមាស',
        'Banteay Meas District',
        '70200'
    ),
    (
        '7.2.1',
        'ឃុំ​ បន្ទាយមាសខាងកើត',
        'Banteay Meas Khang Kaeut Commune',
        '70201'
    ),
    (
        '7.2.2',
        'ឃុំ បន្ទាយមាសខាងលិច',
        'Banteay Meas Khang Lech Commune',
        '70202'
    ),
    (
        '7.2.3',
        'ឃុំ ​ព្រៃទន្លេ',
        'Prey Tonle Commune',
        '70203'
    ),
    (
        '7.2.4',
        'ឃុំ សំរោងក្រោម',
        'Samraong Kraom Commune',
        '70204'
    ),
    (
        '7.2.5',
        'ឃុំ សំរោងលើ',
        'Samraong Leu Commune',
        '70205'
    ),
    (
        '7.2.6',
        'ឃុំ ​ស្តេចគង់ខាងជើង',
        'Sdach Kung Khang Cheung Commune',
        '70206'
    ),
    (
        '7.2.7',
        'ឃុំ ​ស្តេចគង់ខាងលិច',
        'Sdach Kung Khang Lech Commune',
        '70207'
    ),
    (
        '7.2.8',
        'ឃុំ ​ស្តេចគង់ខាងត្បូង',
        'Sdach Kung Khang Tboung Commune',
        '70208'
    ),
    (
        '7.2.9',
        'ឃុំ ត្នោតចុងស្រង់',
        'Tnaot Chong Srang Commune',
        '70209'
    ),
    (
        '7.2.10',
        'ឃុំ ត្រពាំងសាលាខាងកើត',
        'Trapeang Sala Khang Kaeut Commune',
        '70210'
    ),
    (
        '7.2.11',
        'ឃុំ ត្រពាំងសាលាខាងលិច',
        'Trapeang Sala Khang Lech Commune',
        '70211'
    ),
    (
        '7.2.12',
        'ឃុំ ទូកមាសខាងកើត',
        'Tuk Meas Khang Kaeut Commune',
        '70212'
    ),
    (
        '7.2.13',
        'ឃុំ ទូកមាសខាងលិច',
        'Tuk Meas Khang Lech Commune',
        '70213'
    ),
    (
        '7.2.14',
        'ឃុំ វត្តអង្គខាងជើង',
        'Voat Ang Khang Cheung Commune',
        '70214'
    ),
    (
        '7.2.15',
        'ឃុំ ​វត្តអង្គខាងត្បូង',
        'Voat Ang Khang Tboung Commune',
        '70215'
    ),
    ('7.3', 'ស្រុក ឈូក', 'Chhuk District', '70300'),
    ('7.3.1', 'ឃុំ បានៀវ', 'Ba Niev Commune', '70301'),
    ('7.3.2', 'ឃុំ តាកែន', 'Ta Kaen Commune', '70302'),
    (
        '7.3.3',
        'ឃុំ បឹងនិមល',
        'Boeng Nimul Commune',
        '70303'
    ),
    ('7.3.4', 'ឃុំ ឈូក', 'Chhuk Commune', '70304'),
    (
        '7.3.5',
        'ឃុំ ដូនយ៉យ',
        'Doun Yay Commune',
        '70305'
    ),
    (
        '7.3.6',
        'ឃុំ ក្រាំងស្បូវ',
        'Krang Sbouv Commune',
        '70306'
    ),
    (
        '7.3.7',
        'ឃុំ ក្រាំងស្នាយ',
        'Krang Snay Commune',
        '70307'
    ),
    ('7.3.8', 'ឃុំ ល្បើក', 'Lbaeuk Commune', '70308'),
    (
        '7.3.9',
        'ឃុំ ត្រពាំងភ្លាំង',
        'Trapeang Phleang Commune',
        '70309'
    ),
    (
        '7.3.10',
        'ឃុំ មានជ័យ',
        'Mean Chey Commune',
        '70310'
    ),
    (
        '7.3.11',
        'ឃុំ នារាយណ៍',
        'Neareay Commune',
        '70311'
    ),
    (
        '7.3.12',
        'ឃុំ សត្វពង',
        'Sat Pong Commune',
        '70312'
    ),
    (
        '7.3.13',
        'ឃុំ​ ត្រពាំងបី',
        'Trapeang Bei Commune',
        '70313'
    ),
    (
        '7.3.14',
        'ឃុំ ត្រមែង',
        'Trameaeng Commune',
        '70314'
    ),
    (
        '7.3.15',
        'ឃុំ តេជោអភិវឌ្ឍន៍',
        'Dechou Akphivoad Commune',
        '70315'
    ),
    (
        '7.4',
        'ស្រុក ជុំគិរី',
        'Chum Kiri District',
        '70400'
    ),
    ('7.4.1', 'ឃុំ ច្រេស', 'Chres Commune', '70401'),
    (
        '7.4.2',
        'ឃុំ ជំពូវន្ត',
        'Chumpu Voan Commune',
        '70402'
    ),
    (
        '7.4.3',
        'ឃុំ ស្នាយអញ្ជិត',
        'Snay Anhchit Commune',
        '70403'
    ),
    (
        '7.4.4',
        '​ឃុំ ស្រែចែង',
        'Srae Chaeng Commune',
        '70404'
    ),
    (
        '7.4.5',
        'ឃុំ ស្រែក្នុង',
        'Srae Knong Commune',
        '70405'
    ),
    (
        '7.4.6',
        'ឃុំ ស្រែសំរោង',
        'Srae Samraong Commune',
        '70406'
    ),
    (
        '7.4.7',
        'ឃុំ ត្រពាំងរាំង',
        'Trapeang Reang Commune',
        '70407'
    ),
    (
        '7.5',
        '​ស្រុក ដងទង់',
        'Dang Tung District',
        '70500'
    ),
    (
        '7.5.1',
        'ឃុំ ដំណាក់សុក្រំ',
        'Damnak Sokram Commune',
        '70501'
    ),
    (
        '7.5.2',
        'ឃុំ ដងទង់',
        'Dang Tung Commune',
        '70502'
    ),
    (
        '7.5.3',
        'ឃុំ ខ្ជាយខាងជើង',
        'Khcheay Khang Cheung Commune',
        '70503'
    ),
    (
        '7.5.4',
        'ឃុំ ខ្ជាយខាងត្បូង',
        'Khcheay Khang Tboung Commune',
        '70504'
    ),
    (
        '7.5.5',
        'ឃុំ មានរិទ្ធិ',
        'Mean Rit Commune',
        '70505'
    ),
    (
        '7.5.6',
        'ឃុំ ស្រែជាខាងជើង',
        'Srae Chea Khang Cheung Commune',
        '70506'
    ),
    (
        '7.5.7',
        'ឃុំ ស្រែជាខាងត្បូង',
        'Srae Chea Khang Tboung Commune',
        '70507'
    ),
    ('7.5.8', 'ឃុំ ​ទទុង', 'Totung Commune', '70508'),
    (
        '7.5.9',
        'ឃុំ អង្គ​ រមាស',
        'Ang Romeas Commune',
        '70509'
    ),
    ('7.5.10', 'ឃុំ ល្អាង', 'L''ang Commune', '70510'),
    (
        '7.6',
        'ស្រុក កំពង់ត្រាច​',
        'Kampong Trach District',
        '70600'
    ),
    (
        '7.6.1',
        'ឃុំ បឹងសាលាខាងជើង',
        'Boeng Sala Khang Cheung Commune',
        '70601'
    ),
    (
        '7.6.2',
        'ឃុំ បឹងសាលាខាងត្បូង',
        'Boeng Sala Khang Tboung Commune',
        '70602'
    ),
    (
        '7.6.3',
        'ឃុំ ដំណាក់កន្ទួតខាងជើង',
        'Damnak Kantuot Khang Cheung Commune',
        '70603'
    ),
    (
        '7.6.4',
        'ឃុំ ដំណាក់កន្ទួតខាងត្បូង',
        'Damnak Kantuot Khang Tboung Commune',
        '70604'
    ),
    (
        '7.6.5',
        'ឃុំ កំពង់ត្រាចខាងកើត',
        'Kampong Trach Khang Kaeut Commune',
        '70605'
    ),
    (
        '7.6.6',
        'ឃុំ កំពង់ត្រាចខាងលិច',
        'Kampong Trach Khang Lech Commune',
        '70606'
    ),
    (
        '7.6.7',
        'ឃុំ ប្រាសាទភ្នំខ្យង',
        'Prasat Phnum Khyang Commune',
        '70607'
    ),
    (
        '7.6.8',
        'ឃុំ ភ្នំប្រាសាទ',
        'Phnum Prasat Commune',
        '70608'
    ),
    (
        '7.6.9',
        'ឃុំ អង្គសុរភី',
        'Ang Sophi Commune',
        '70609'
    ),
    (
        '7.6.10',
        'ឃុំ ព្រែកក្រឹស',
        'Preaek Kroes Commune',
        '70612'
    ),
    (
        '7.6.11',
        'ឃុំ ​ឫស្សីស្រុកខាងកើត',
        'Ruessei Srok Khang Kaeut Commune',
        '70613'
    ),
    (
        '7.6.12',
        'ឃុំ ​ឫស្សីស្រុកខាងលិច',
        'Ruessei Srok Khang Lech Commune',
        '70614'
    ),
    (
        '7.6.13',
        'ឃុំ ស្វាយទងខាងជើង',
        'Svay Tong Khang Cheung Commune',
        '70615'
    ),
    (
        '7.6.14',
        'ឃុំ ស្វាយទងខាងត្បូង',
        'Svay Tong Khang Tboung Commune',
        '70616'
    ),
    (
        '7.7',
        'ស្រុក ទឹកឈូ',
        'Tuek Chhu District',
        '70700'
    ),
    (
        '7.7.1',
        'ឃុំ ជុំគ្រៀល',
        'Chum Kriel Commune',
        '70702'
    ),
    (
        '7.7.2',
        'ឃុំ កំពង់ក្រែង',
        'Kampong Kraeng Commune',
        '70703'
    ),
    (
        '7.7.3',
        'ឃុំ កំពង់សំរោង',
        'Kampong Samraong Commune',
        '70704'
    ),
    (
        '7.7.4',
        'ឃុំ កណ្តោល',
        'Kandaol Commune',
        '70705'
    ),
    (
        '7.7.5',
        'ឃុំ កូនសត្វ',
        'Koun Sat Commune',
        '70708'
    ),
    (
        '7.7.6',
        'ឃុំ ម៉ាក់ប្រាង្គ',
        'Makprang Commune',
        '70709'
    ),
    (
        '7.7.7',
        'ឃុំ ព្រៃឃ្មុំ',
        'Prey Khmum Commune',
        '70712'
    ),
    (
        '7.7.8',
        'ឃុំ ព្រៃថ្នង',
        'Prey Thnang Commune',
        '70713'
    ),
    (
        '7.7.9',
        'ឃុំ ស្ទឹងកែវ',
        'Stueng Kaev Commune',
        '70715'
    ),
    ('7.7.10', 'ឃុំ ថ្មី', 'Thmei Commune', '70716'),
    (
        '7.7.11',
        'ឃុំ ត្រពាំងព្រីង',
        'Trapeang Pring Commune',
        '70717'
    ),
    (
        '7.7.12',
        'ឃុំ ត្រពាំងសង្កែ',
        'Trapeang Sangkae Commune',
        '70718'
    ),
    (
        '7.7.13',
        'ឃុំ ត្រពាំងធំ',
        'Trapeang Thum Commune',
        '70719'
    ),
    (
        '7.8',
        'ក្រុង កំពត',
        'Kampot Municipality',
        '70800'
    ),
    (
        '7.8.1',
        'សង្កាត់ កំពង់កណ្តាល',
        'Sangkat Kampong Kandal',
        '70801'
    ),
    (
        '7.8.2',
        'សង្កាត់ ក្រាំងអំពិល',
        'Sangkat Krang Ampil',
        '70802'
    ),
    (
        '7.8.3',
        'សង្កាត់ កំពង់បាយ',
        'Sangkat Kampong Bay',
        '70803'
    ),
    (
        '7.8.4',
        'សង្កាត់ អណ្តូងខ្មែរ',
        'Sangkat Andoung Khmer',
        '70804'
    ),
    (
        '7.8.5',
        'សង្កាត់ ត្រើយកោះ',
        'Sangkat Traeuy Kaoh',
        '70805'
    ),
    (
        '7.9',
        'ក្រុង បូកគោ',
        'Bouk Kou Municipality',
        '70900'
    ),
    (
        '7.9.1',
        'សង្កាត់ បឹងទូក',
        'Sangkat Boeng Tuk',
        '70901'
    ),
    (
        '7.9.2',
        'សង្កាត់ កោះតូច',
        'Sangkat Kaoh Touch',
        '70902'
    ),
    (
        '7.9.3',
        'សង្កាត់ ព្រែកត្នោត',
        'Sangkat Preaek Tnaot',
        '70903'
    ),
    ('8', 'ខេត្ត កណ្តាល', 'Kandal Province', '80000'),
    (
        '8.1',
        'ស្រុក កណ្តាលស្ទឹង',
        'Kandal Stueng District',
        '80100'
    ),
    (
        '8.1.1',
        'ឃុំ អំពៅព្រៃ',
        'Ampov Prey Commune',
        '80101'
    ),
    (
        '8.1.2',
        'ឃុំ អន្លង់រមៀត',
        'Anlung Romiet Commune',
        '80102'
    ),
    ('8.1.3', 'ឃុំ បារគូ', 'Barku Commune', '80103'),
    (
        '8.1.4',
        'ឃុំ ​បឹងខ្យាង',
        'Boeng Khyang Commune',
        '80104'
    ),
    (
        '8.1.5',
        'ឃុំ ជើងកើប',
        'Cheung Kaeub Commune',
        '80105'
    ),
    (
        '8.1.6',
        'ឃុំ ដើមឫស',
        'Daeum Rues Commune',
        '80106'
    ),
    (
        '8.1.7',
        'ឃុំ កណ្តោក',
        'Kandaok Commune',
        '80107'
    ),
    ('8.1.8', 'ឃុំ ថ្មី', 'Thmei Commune', '80108'),
    (
        '8.1.9',
        'ឃុំ គោកត្រប់',
        'Kouk Trab Commune',
        '80109'
    ),
    (
        '8.1.10',
        'ឃុំ ព្រះពុទ្ឋ',
        'Preah Put Commune',
        '80113'
    ),
    (
        '8.1.11',
        'ឃុំ ព្រែករកា',
        'Preaek Roka Commune',
        '80115'
    ),
    (
        '8.1.12',
        'ឃុំ ព្រែកស្លែង',
        'Preaek Slaeng Commune',
        '80116'
    ),
    ('8.1.13', 'ឃុំ ​រកា', 'Roka Commune', '80117'),
    (
        '8.1.14',
        'ឃុំ រលាំងកែន',
        'Roleang Kaen Commune',
        '80118'
    ),
    (
        '8.1.15',
        'ឃុំ សៀមរាប',
        'Siem Reab Commune',
        '80122'
    ),
    ('8.1.16', 'ឃុំ ត្បែង', 'Tbaeng Commune', '80125'),
    (
        '8.1.17',
        'ឃុំ ត្រពាំងវែង',
        'Trapeang Veaeng Commune',
        '80127'
    ),
    ('8.1.18', 'ឃុំ ទ្រា', 'Trea Commune', '80128'),
    (
        '8.2',
        'ស្រុក កៀនស្វាយ',
        'Kien Svay District',
        '80200'
    ),
    (
        '8.2.1',
        'ឃុំ បន្ទាយដែក',
        'Banteay Daek Commune',
        '80201'
    ),
    (
        '8.2.2',
        'ឃុំ ឈើទាល',
        'Chheu Teal Commune',
        '80202'
    ),
    ('8.2.3', 'ឃុំ ដីឥដ្ឋ', 'Dei Ed Commune', '80203'),
    (
        '8.2.4',
        'ឃុំ កំពង់ស្វាយ',
        'Kampong Svay Commune',
        '80204'
    ),
    ('8.2.5', 'ឃុំ គគីរ', 'Kokir Commune', '80206'),
    (
        '8.2.6',
        'ឃុំ គគីរធំ',
        'Kokir Thum Commune',
        '80207'
    ),
    (
        '8.2.7',
        'ឃុំ ភូមិធំ',
        'Phum Thum Commune',
        '80208'
    ),
    (
        '8.2.8',
        'ឃុំ ​សំរោងធំ',
        'Samraong Thum Commune',
        '80211'
    ),
    (
        '8.3',
        'ស្រុក ខ្សាច់កណ្តាល',
        'Khsach Kandal District',
        '80300'
    ),
    (
        '8.3.1',
        'ឃុំ ជ័យធំ',
        'Chey Thum Commune',
        '80302'
    ),
    (
        '8.3.2',
        'ឃុំ កំពង់ចំលង',
        'Kampong Chamlang Commune',
        '80303'
    ),
    (
        '8.3.3',
        'ឃុំ កោះចូរ៉ាម',
        'Kaoh Chouram Commune',
        '80304'
    ),
    (
        '8.3.4',
        'ឃុំ ព្រះប្រសប់',
        'Preah Prasab Commune',
        '80306'
    ),
    (
        '8.3.5',
        'ឃុំ ព្រែកតាមាក់',
        'Preaek Ta Meak Commune',
        '80310'
    ),
    (
        '8.3.6',
        'ឃុំ ពុកឫស្សី',
        'Puk Ruessei Commune',
        '80311'
    ),
    (
        '8.3.7',
        'ឃុំ រកាជន្លឹង',
        'Roka Chunlueng Commune',
        '80312'
    ),
    (
        '8.3.8',
        'ឃុំ សន្លុង',
        'Sanlung Commune',
        '80313'
    ),
    ('8.3.9', 'ឃុំ ស៊ីធរ', 'Sithor Commune', '80314'),
    (
        '8.3.10',
        'ឃុំ ស្វាយរមៀត',
        'Svay Romiet Commune',
        '80316'
    ),
    ('8.3.11', 'ឃុំ តាឯក', 'Ta Aek Commune', '80317'),
    (
        '8.3.12',
        'ឃុំ វិហារសួគ៌',
        'Vihea Suor Commune',
        '80318'
    ),
    (
        '8.4',
        'ស្រុក កោះធំ​',
        'Kaoh Thum District',
        '80400'
    ),
    (
        '8.4.1',
        'ឃុំ កំពង់កុង',
        'Kampong Kong Commune',
        '80403'
    ),
    (
        '8.4.2',
        'ឃុំ កោះធំ “ ក ”',
        'Kaoh Thum “ Ka ” Commune',
        '80404'
    ),
    (
        '8.4.3',
        'ឃុំ កោះធំ “ ខ ”',
        'Kaoh Thum “ Kha ” Commune',
        '80405'
    ),
    (
        '8.4.4',
        'ឃុំ លើកដែក',
        'Leuk Daek Commune',
        '80407'
    ),
    (
        '8.4.5',
        'ឃុំ ពោធិ៍បាន',
        'Pou Ban Commune',
        '80408'
    ),
    (
        '8.4.6',
        'ឃុំ ព្រែកថ្មី',
        'Preaek Thmei Commune',
        '80411'
    ),
    (
        '8.5',
        'ស្រុក លើកដែក',
        'Leuk Daek District',
        '80500'
    ),
    (
        '8.5.1',
        'ឃុំ កំពង់ភ្នំ',
        'Kampong Phnum Commune',
        '80501'
    ),
    (
        '8.5.2',
        'ឃុំ ក្អមសំណរ',
        'K''am Samnar Commune',
        '80502'
    ),
    (
        '8.5.3',
        'ឃុំ ខ្ពបអាទាវ',
        'Khpob Ateav Commune',
        '80503'
    ),
    (
        '8.5.4',
        'ឃុំ ពាមរាំង',
        'Peam Reang Commune',
        '80504'
    ),
    (
        '8.5.5',
        'ឃុំ ព្រែកដាច់',
        'Preaek Dach Commune',
        '80505'
    ),
    (
        '8.5.6',
        'ឃុំ ព្រែកទន្លាប់',
        'Preaek Tunloab Commune',
        '80506'
    ),
    ('8.5.7', 'ឃុំ សណ្តារ', 'Sandar Commune', '80507'),
    (
        '8.6',
        'ស្រុក ល្វាឯម',
        'Lvea Aem District',
        '80600'
    ),
    (
        '8.6.1',
        'ឃុំ បឹងគ្រំ',
        'Boeng Krum Commune',
        '80603'
    ),
    (
        '8.6.2',
        'ឃុំ កោះកែវ',
        'Kaoh Kaev Commune',
        '80604'
    ),
    (
        '8.6.3',
        'ឃុំ កោះរះ',
        'Kaoh Reah Commune',
        '80605'
    ),
    (
        '8.6.4',
        'ឃុំ ល្វាសរ',
        'Lvea Sar Commune',
        '80606'
    ),
    (
        '8.6.5',
        'ឃុំ ភូមិធំ',
        'Phum Thum Commune',
        '80608'
    ),
    (
        '8.6.6',
        'ឃុំ ព្រែករៃ',
        'Preaek Rey Commune',
        '80610'
    ),
    (
        '8.6.7',
        'ឃុំ ព្រែកឫស្សី',
        'Preaek Ruessei Commune',
        '80611'
    ),
    (
        '8.6.8',
        'ឃុំ សំបួរ',
        'Sambuor  Commune',
        '80612'
    ),
    (
        '8.6.9',
        'ឃុំ ថ្មគរ',
        'Thma Kor Commune',
        '80614'
    ),
    (
        '8.6.10',
        'ឃុំ ទឹកឃ្លាំង',
        'Tuek Khleang  Commune',
        '80615'
    ),
    (
        '8.7',
        'ស្រុក មុខកំពូល',
        'Mukh Kampul District',
        '80700'
    ),
    (
        '8.7.1',
        'ឃុំ ព្រែកអញ្ចាញ',
        'Preaek Anhchanh Commune',
        '80703'
    ),
    (
        '8.7.2',
        'ឃុំ ព្រែកដំបង',
        'Preaek Dambang Commune',
        '80704'
    ),
    (
        '8.7.3',
        'ឃុំ រកាកោង ទី ១',
        'Roka Kaong Ti Muoy Commune',
        '80707'
    ),
    (
        '8.7.4',
        'ឃុំ រកាកោង ទី ២',
        'Roka Kaong Ti Pir Commune',
        '80708'
    ),
    (
        '8.7.5',
        'ឃុំ ឫស្សីជ្រោយ',
        'Ruessei Chrouy Commune',
        '80709'
    ),
    (
        '8.7.6',
        'ឃុំ សំបួរមាស',
        'Sambuor Meas Commune',
        '80710'
    ),
    (
        '8.7.7',
        'ឃុំ ស្វាយអំពារ',
        'Svay Ampear Commune',
        '80711'
    ),
    (
        '8.8',
        'ស្រុក អង្គស្នួល',
        'Ang Snuol District',
        '80800'
    ),
    (
        '8.8.1',
        'ឃុំ បែកចាន',
        'Baek Chan Commune',
        '80801'
    ),
    (
        '8.8.2',
        'ឃុំ ឆក់ឈើនាង',
        'Chhak Chheu Neang Commune',
        '80803'
    ),
    (
        '8.8.3',
        'ឃុំ ដំណាក់អំពិល',
        'Damnak Ampil Commune',
        '80804'
    ),
    (
        '8.8.4',
        'ឃុំ ក្រាំងម្កាក់',
        'Krang Mkak Commune',
        '80807'
    ),
    ('8.8.5', 'ឃុំ លំហាច', 'Lumhach Commune', '80808'),
    ('8.8.6', 'ឃុំ ម្កាក់', 'Mkak Commune', '80809'),
    ('8.8.7', 'ឃុំ ពើក', 'Peuk Commune', '80811'),
    (
        '8.8.8',
        'ឃុំ ព្រៃពួច',
        'Prey Puoch Commune',
        '80813'
    ),
    (
        '8.8.9',
        'ឃុំ សំរោងលើ',
        'Samraong Leu Commune',
        '80814'
    ),
    (
        '8.8.10',
        'ឃុំ ទួលព្រេជ',
        'Tuol Prech Commune',
        '80816'
    ),
    (
        '8.9',
        'ស្រុក ពញាឮ',
        'Ponhea Lueu District',
        '80900'
    ),
    (
        '8.9.1',
        'ឃុំ ឈ្វាំង',
        'Chhveang Commune',
        '80901'
    ),
    (
        '8.9.2',
        'ឃុំ ជ្រៃលាស់',
        'Chrey Loas Commune',
        '80902'
    ),
    (
        '8.9.3',
        'ឃុំ កំពង់ហ្លួង',
        'Kampong Luong Commune',
        '80903'
    ),
    (
        '8.9.4',
        'ឃុំ កំពង់អុស',
        'Kampong Os Commune',
        '80904'
    ),
    (
        '8.9.5',
        'ឃុំ កោះចិន',
        'Kaoh Chen Commune',
        '80905'
    ),
    (
        '8.9.6',
        'ឃុំ ភ្នំបាត',
        'Phnum Bat Commune',
        '80906'
    ),
    (
        '8.9.7',
        'ឃុំ ពញាឮ',
        'Ponhea Lueu Commune',
        '80907'
    ),
    (
        '8.9.8',
        'ឃុំ ព្រែកតាទែន',
        'Preaek Ta Teaen Commune',
        '80910'
    ),
    (
        '8.9.9',
        'ឃុំ ផ្សារដែក',
        'Phsar Daek Commune',
        '80911'
    ),
    (
        '8.9.10',
        'ឃុំ ទំនប់ធំ',
        'Tumnub Thum Commune',
        '80913'
    ),
    (
        '8.9.11',
        'ឃុំ វិហារហ្លួង',
        'Vihea Luong Commune',
        '80914'
    ),
    ('8.1', 'ស្រុក ស្អាង', 'S''ang District', '81000'),
    ('8.10.1', 'ឃុំ ខ្ពប', 'Khpob Commune', '81001'),
    (
        '8.10.2',
        'ឃុំ កោះខែល',
        'Kaoh Khael Commune',
        '81003'
    ),
    (
        '8.10.3',
        'ឃុំ កោះខ្សាច់ទន្លា',
        'Kaoh Khsach Tunlea Commune',
        '81004'
    ),
    (
        '8.10.4',
        'ឃុំ ក្រាំងយ៉ូវ',
        'Krang Youv Commune',
        '81005'
    ),
    (
        '8.10.5',
        'ឃុំ ប្រាសាទ',
        'Prasat Commune',
        '81006'
    ),
    (
        '8.10.6',
        'ឃុំ ព្រែកអំបិល',
        'Preaek Ambel Commune',
        '81007'
    ),
    (
        '8.10.7',
        'ឃុំ ព្រែកគយ',
        'Preaek Koy Commune',
        '81008'
    ),
    (
        '8.10.8',
        'ឃុំ ស្អាងភ្នំ',
        'S''ang Phnum Commune',
        '81010'
    ),
    (
        '8.10.9',
        'ឃុំ ស្វាយប្រទាល',
        'Svay Prateal Commune',
        '81012'
    ),
    (
        '8.10.10',
        'ឃុំ​ តាលន់',
        'Ta Lun Commune',
        '81014'
    ),
    (
        '8.10.11',
        'ឃុំ ត្រើយស្លា',
        'Traeuy Sla Commune',
        '81015'
    ),
    (
        '8.10.12',
        'ឃុំ ទឹកវិល',
        'Tuek Vil Commune',
        '81016'
    ),
    (
        '8.11',
        'ក្រុង តាខ្មៅ',
        'Ta Khmau Municipality',
        '81100'
    ),
    (
        '8.11.1',
        'សង្កាត់ តាក្តុល',
        'Sangkat Ta Kdol',
        '81101'
    ),
    (
        '8.11.2',
        'សង្កាត់ ព្រែកឫស្សី',
        'Sangkat Prek Ruessei',
        '81102'
    ),
    (
        '8.11.3',
        'សង្កាត់ ដើមមៀន',
        'Sangkat Daeum Mien',
        '81103'
    ),
    (
        '8.11.4',
        'សង្កាត់ តាខ្មៅ',
        'Sangkat Ta Khmau',
        '81104'
    ),
    (
        '8.11.5',
        'សង្កាត់ ព្រែកហូរ',
        'Sangkat Preaek Hour',
        '81105'
    ),
    (
        '8.11.6',
        'សង្កាត់ កំពង់សំណាញ់',
        'Sangkat Kampong Samnanh',
        '81106'
    ),
    (
        '8.11.7',
        'សង្កាត់ ស្វាយរលំ',
        'Sangkat Svay Rolum',
        '81107'
    ),
    (
        '8.11.8',
        'សង្កាត់ កោះអន្លង់ចិន',
        'Sangkat Kaoh Anlung Chen',
        '81108'
    ),
    (
        '8.11.9',
        'សង្កាត់ សិត្បូ',
        'Sangkat Settak bou',
        '81109'
    ),
    (
        '8.11.10',
        'សង្កាត់ រកាខ្ពស់',
        'Sangkat Roka Khpuos',
        '81110'
    ),
    (
        '8.12',
        'ក្រុង សំពៅពូន',
        'Sampov Pun Municipality',
        '81200'
    ),
    (
        '8.12.1',
        'សង្កាត់ ឈើខ្មៅ',
        'Sangkat Chheu Khmau',
        '81201'
    ),
    (
        '8.12.2',
        'សង្កាត់ ព្រែកជ្រៃ',
        'Sangkat Prea​ek Chrey',
        '81202'
    ),
    (
        '8.12.3',
        'សង្កាត់ ព្រែកស្តី',
        'Sangkat Preaek Sdei',
        '81203'
    ),
    (
        '8.12.4',
        'សង្កាត់ ជ្រោយតាកែវ',
        'Sangkat  Chrouy Ta Kaev',
        '81204'
    ),
    (
        '8.12.5',
        'សង្កាត់ សំពៅពូន',
        'Sangkat Sampov Pun',
        '81205'
    ),
    (
        '8.13',
        'ក្រុង អរិយក្សត្រ',
        'Akrey Ksat Municipality',
        '81300'
    ),
    (
        '8.13.1',
        'សង្កាត់ បាក់ដាវ',
        'Sangkat Bak Dav',
        '81301'
    ),
    (
        '8.13.2',
        'សង្កាត់ កោះឧកញ៉ាតី',
        'Sangkat Kaoh Oknha Tei',
        '81302'
    ),
    (
        '8.13.3',
        'សង្កាត់ ព្រែកអំពិល',
        'Sangkat Preaek Ampil',
        '81303'
    ),
    (
        '8.13.4',
        'សង្កាត់ ព្រែកលួង',
        'Sangkat Preaek Luong',
        '81304'
    ),
    (
        '8.13.5',
        'សង្កាត់ ព្រែកតាកូវ',
        'Sangkat Preaek Ta kouv',
        '81305'
    ),
    (
        '8.13.6',
        'សង្កាត់ ស្វាយជ្រំ',
        'Sangkat Svay Chrum',
        '81306'
    ),
    (
        '8.13.7',
        'សង្កាត់ អរិយក្សត្រ',
        'Sangkat Akrey Ksat',
        '81307'
    ),
    (
        '8.13.8',
        'សង្កាត់ សារិកាកែវ',
        'Sangkat Sarikakaev',
        '81308'
    ),
    (
        '8.13.9',
        'សង្កាត់ ពាមឧកញ៉ាអុង',
        'Sangkat Peam Oknha Ong',
        '81309'
    ),
    (
        '8.13.10',
        'សង្កាត់ ព្រែកក្មេង',
        'Sangkat Preaek Kmeng',
        '81310'
    ),
    (
        '8.13.11',
        'សង្កាត់ បារុង',
        'Sangkat Barong',
        '81311'
    ),
    (
        '9',
        'ខេត្ត កោះកុង',
        'Koh Kong Province',
        '90000'
    ),
    (
        '9.1',
        'ស្រុក បុទុមសាគរ',
        'Botum Sakor District',
        '90100'
    ),
    (
        '9.1.1',
        'ឃុំ អណ្តូងទឹក',
        'Andoung Tuek Commune',
        '90101'
    ),
    (
        '9.1.2',
        'ឃុំ កណ្តោល',
        'Kandaol Commune',
        '90102'
    ),
    ('9.1.3', 'ឃុំ តានូន', 'Ta Nun Commune', '90103'),
    ('9.1.4', 'ឃុំ ថ្ម ស', 'Thma Sa Commune', '90104'),
    (
        '9.2',
        'ស្រុក គិរីសាគរ',
        'Kiri Sakor District',
        '90200'
    ),
    (
        '9.2.1',
        'ឃុំ កោះស្តេច',
        'Kaoh Sdach Commune',
        '90201'
    ),
    (
        '9.2.2',
        'ឃុំ ភ្ញីមាស',
        'Phnhi Meas Commune',
        '90202'
    ),
    (
        '9.2.3',
        'ឃុំ ព្រែកខ្សាច់',
        'Preaek Khsach Commune',
        '90203'
    ),
    (
        '9.3',
        'ស្រុក កោះកុង',
        'Kaoh Kong District',
        '90300'
    ),
    (
        '9.3.1',
        'ឃុំ ជ្រោយប្រស់',
        'Chrouy Pras Commune',
        '90301'
    ),
    (
        '9.3.2',
        'ឃុំ កោះកាពិ',
        'Kaoh Kapi Commune',
        '90302'
    ),
    (
        '9.3.3',
        'ឃុំ តាតៃក្រោម',
        'Ta Tai Kraom Commune',
        '90303'
    ),
    (
        '9.3.4',
        'ឃុំ ​ត្រពាំងរូង',
        'Trapeang Rung Commune',
        '90304'
    ),
    (
        '9.4',
        'ក្រុង ខេមរភូមិន្ទ',
        'Khemmeakrakphumin Municipality',
        '90400'
    ),
    (
        '9.4.1',
        'សង្កាត់ ស្មាច់មានជ័យ',
        'Sangkat Smach Mean Chey',
        '90401'
    ),
    (
        '9.4.2',
        'សង្កាត់ ​ដងទង់',
        'Sangkat Dang Tung',
        '90402'
    ),
    (
        '9.4.3',
        'សង្កាត់ ស្ទឹងវែង',
        'Sangkat Stueng Veaeng',
        '90403'
    ),
    (
        '9.5',
        'ស្រុក មណ្ឌលសីមា',
        'Mundul Seima District',
        '90500'
    ),
    (
        '9.5.1',
        'ឃុំ ប៉ាក់ខ្លង',
        'Pak Khlang Commune',
        '90501'
    ),
    (
        '9.5.2',
        'ឃុំ ពាមក្រសោប',
        'Peam Krasaob Commune',
        '90502'
    ),
    (
        '9.5.3',
        'ឃុំ ទួលគគីរ',
        'Tuol Kokir Commune',
        '90503'
    ),
    (
        '9.6',
        'ស្រុក ស្រែ អំបិល',
        'Srae Ambel District',
        '90600'
    ),
    (
        '9.6.1',
        'ឃុំ ​បឹងព្រាវ',
        'Boeng Preav Commune',
        '90601'
    ),
    (
        '9.6.2',
        'ឃុំ ជី ​ខ ក្រោម',
        'Chi Kha Kraom Commune',
        '90602'
    ),
    (
        '9.6.3',
        'ឃុំ ជី ខ​ លើ',
        'Chi Kha Leu Commune',
        '90603'
    ),
    (
        '9.6.4',
        'ឃុំ ជ្រោយស្វាយ',
        'Chrouy Svay Commune',
        '90604'
    ),
    (
        '9.6.5',
        'ឃុំ ដងពែង',
        'Dang Peaeng Commune',
        '90605'
    ),
    (
        '9.6.6',
        'ឃុំ ស្រែអំបិល',
        'Srae Ambel Commune',
        '90606'
    ),
    (
        '9.7',
        'ស្រុក ថ្មបាំង',
        'Thma Bang District',
        '90700'
    ),
    (
        '9.7.1',
        'ឃុំ តាទៃលើ',
        'Ta Tey Leu Commune',
        '90701'
    ),
    ('9.7.2', 'ឃុំ ប្រឡាយ', 'Pralay Commune', '90702'),
    (
        '9.7.3',
        'ឃុំ ជំនាប់',
        'Chumnoab Commune',
        '90703'
    ),
    (
        '9.7.4',
        'ឃុំ ឫស្សីជ្រុំ',
        'Ruessei Chrum Commune',
        '90704'
    ),
    (
        '9.7.5',
        'ឃុំ ជីផាត',
        'Chi Phat Commune',
        '90705'
    ),
    (
        '9.7.6',
        'ឃុំ ថ្មដូនពៅ',
        'Thma Doun Pov Commune',
        '90706'
    ),
    (
        '10',
        'ខេត្ត ក្រចេះ',
        'Kratie Province',
        '100000'
    ),
    (
        '10.1',
        'ស្រុក ឆ្លូង',
        'Chhloung District',
        '100100'
    ),
    (
        '10.1.1',
        'ឃុំ ឆ្លូង',
        'Chhloung Commune',
        '100101'
    ),
    (
        '10.1.2',
        'ឃុំ ដំរីផុង',
        'Damrei Phong Commune',
        '100102'
    ),
    (
        '10.1.3',
        'ឃុំ ហាន់ជ័យ',
        'Hanchey Commune',
        '100103'
    ),
    (
        '10.1.4',
        'ឃុំ កំពង់ដំរី',
        'Kampong Damrei Commune',
        '100104'
    ),
    (
        '10.1.5',
        'ឃុំ កព្ជារ',
        'Kanhchor Commune',
        '100105'
    ),
    (
        '10.1.6',
        'ឃុំ ខ្សាច់អណ្តែត',
        'Khsach Andaet Commune',
        '100106'
    ),
    ('10.1.7', 'ឃុំ ពង្រ', 'Pungro Commune', '100107'),
    (
        '10.1.8',
        'ឃុំ ព្រែកសាម៉ាន់',
        'Preaek Saman Commune',
        '100108'
    ),
    (
        '10.2',
        'ក្រុង ក្រចេះ',
        'Kracheh Municipality',
        '100200'
    ),
    (
        '10.2.1',
        'សង្កាត់ កោះទ្រង់',
        'Sangkat  Kaoh Trung',
        '100207'
    ),
    (
        '10.2.2',
        'សង្កាត់ ក្រគរ',
        'Sangkat  Krakor',
        '100208'
    ),
    (
        '10.2.3',
        'សង្កាត់ ក្រចេះ',
        'Sangkat Kracheh',
        '100209'
    ),
    (
        '10.2.4',
        'សង្កាត់ អូរឫស្សី',
        'Sangkat Ou Ruessei',
        '100210'
    ),
    (
        '10.2.5',
        'សង្កាត់ រកាកណ្តាល',
        'Sangkat  Roka Kandal',
        '100211'
    ),
    (
        '10.3',
        'ស្រុក ព្រែកប្រសព្វ',
        'Preaek Prasab District',
        '100300'
    ),
    (
        '10.3.1',
        'ឃុំ ចំបក់',
        'Chambak Commune',
        '100301'
    ),
    (
        '10.3.2',
        'ឃុំ ជ្រោយបន្ទាយ',
        'Chrouy Banteay Commune',
        '100302'
    ),
    (
        '10.3.3',
        'ឃុំ កំពង់គរ',
        'Kampong Kor Commune',
        '100303'
    ),
    (
        '10.3.4',
        'ឃុំ កោះតាស៊ុយ',
        'Kaoh Ta Suy Commune',
        '100304'
    ),
    (
        '10.3.5',
        'ឃុំ ព្រែកប្រសព្វ',
        'Preaek Prasab Commune',
        '100305'
    ),
    (
        '10.3.6',
        'ឃុំ ឫស្សីកែវ',
        'Ruessei Kaev Commune',
        '100306'
    ),
    ('10.3.7', 'ឃុំ សោប', 'Saob Commune', '100307'),
    (
        '10.3.8',
        'ឃុំ តាម៉ៅ',
        'Ta Mau Commune',
        '100308'
    ),
    (
        '10.4',
        'ស្រុក សំបូរ',
        'Sambour District',
        '100400'
    ),
    (
        '10.4.1',
        'ឃុំ បឹងចារ',
        'Boeng Char Commune',
        '100401'
    ),
    (
        '10.4.2',
        'ឃុំ កំពង់ចាម',
        'Kampong Cham Commune',
        '100402'
    ),
    (
        '10.4.3',
        'ឃុំ កោះខ្ញែរ',
        'Kaoh Khnhaer Commune',
        '100404'
    ),
    (
        '10.4.4',
        'ឃុំ សំបូរ',
        'Sambour Commune',
        '100407'
    ),
    (
        '10.4.5',
        'ឃុំ សណ្តាន់',
        'Sandan Commune',
        '100408'
    ),
    (
        '10.4.6',
        'ឃុំ វឌ្ឍនៈ',
        'Voadtheaknak Commune',
        '100410'
    ),
    (
        '10.5',
        'ស្រុក ស្នួល',
        'Snuol District',
        '100500'
    ),
    (
        '10.5.1',
        'ឃុំ ឃ្សឹម',
        'Khsuem Commune',
        '100501'
    ),
    (
        '10.5.2',
        'ឃុំ ២ធ្នូ',
        'Pir Thnu Commune',
        '100502'
    ),
    ('10.5.3', 'ឃុំ ស្នួល', 'Snuol Commune', '100503'),
    (
        '10.5.4',
        'ឃុំ ស្រែចារ',
        'Srae Char Commune',
        '100504'
    ),
    (
        '10.5.5',
        'ឃុំ ស្វាយជ្រះ',
        'Svay Chreah Commune',
        '100505'
    ),
    (
        '10.5.6',
        'ឃុំ គ្រញូងសែនជ័យ',
        'Kranhung Saen Chey Commune',
        '100506'
    ),
    (
        '10.6',
        'ស្រុក ចិត្របុរី',
        'Chet Borei District',
        '100600'
    ),
    (
        '10.6.1',
        'ឃុំ បុសលាវ',
        'Bos Leav Commune',
        '100601'
    ),
    (
        '10.6.2',
        'ឃុំ ចង្ក្រង់',
        'Changkrang Commune',
        '100602'
    ),
    ('10.6.3', 'ឃុំ ដារ', 'Dar Commune', '100603'),
    (
        '10.6.4',
        'ឃុំ កន្ទួត',
        'Kantuot Commune',
        '100604'
    ),
    (
        '10.6.5',
        'ឃុំ គោលាប់',
        'Kou Loab Commune',
        '100605'
    ),
    (
        '10.6.6',
        'ឃុំ កោះច្រែង',
        'Kaoh Chraeng Commune',
        '100606'
    ),
    (
        '10.6.7',
        'ឃុំ សំបុក',
        'Sambok Commune',
        '100607'
    ),
    (
        '10.6.8',
        'ឃុំ ថ្មអណ្តើក',
        'Thma Andaeuk Commune',
        '100608'
    ),
    (
        '10.6.9',
        'ឃុំ ថ្មគ្រែ',
        'Thma Kreae Commune',
        '100609'
    ),
    ('10.6.10', 'ឃុំ ថ្មី', 'Thmei Commune', '100610'),
    (
        '10.7',
        'ស្រុក អូរគ្រៀងសែនជ័យ',
        'Ou Krieng Saen Chey District',
        '100700'
    ),
    (
        '10.7.1',
        'ឃុំ ក្បាលដំរី',
        'Kbal Damrei Commune',
        '100701'
    ),
    (
        '10.7.2',
        'ឃុំ អូរគ្រៀង',
        'Ou Krieng Commune',
        '100702'
    ),
    (
        '10.7.3',
        'ឃុំ អូរកណ្តៀរសែនជ័យ',
        'Ou Kandie Saen Chey Commune',
        '100703'
    ),
    (
        '10.7.4',
        'ឃុំ រលួសមានជ័យ',
        'Roluos Mean Chey Commune',
        '100704'
    ),
    (
        '10.7.5',
        'ឃុំ ស្រែជិះ',
        'Srae Chis Commune',
        '100705'
    ),
    (
        '11',
        'ខេត្ត មណ្ឌលគិរី',
        'Mondul Kiri Province',
        '110000'
    ),
    (
        '11.1',
        'ស្រុក កែវសីមា',
        'Kaev Seima District',
        '110100'
    ),
    (
        '11.1.1',
        'ឃុំ ចុងផ្លាស់',
        'Chong Phlah Commune',
        '110101'
    ),
    (
        '11.1.2',
        'ឃុំ មេម៉ង់',
        'Me Mang Commune',
        '110102'
    ),
    (
        '11.1.3',
        'ឃុំ ស្រែឈូក',
        'Srae Chhuk Commune',
        '110103'
    ),
    (
        '11.1.4',
        'ឃុំ ស្រែខ្ទុម',
        'Srae Khtum Commune',
        '110104'
    ),
    (
        '11.1.5',
        'ឃុំ ស្រែព្រះ',
        'Srae Preah Commune',
        '110105'
    ),
    (
        '11.2',
        'ស្រុក កោះញែក',
        'Kaoh Nheaek District',
        '110200'
    ),
    (
        '11.2.1',
        'ឃុំ ណងឃីលិក',
        'Nang Khi Lik Commune',
        '110201'
    ),
    (
        '11.2.2',
        'ឃុំ អ បួនលើ',
        'A Buon Leu Commune',
        '110202'
    ),
    ('11.2.3', 'ឃុំ រយ៉', 'Roya Commune', '110203'),
    (
        '11.2.4',
        'ឃុំ សុខសាន្ត',
        'Sokh San Commune',
        '110204'
    ),
    (
        '11.2.5',
        'ឃុំ​ ស្រែហ៊ុយ',
        'Srae Huy Commune',
        '110205'
    ),
    (
        '11.2.6',
        'ឃុំ ស្រែសង្គម',
        'Srae Sangkum Commune',
        '110206'
    ),
    (
        '11.3',
        'ស្រុក អូររាំង',
        'Ou Reang District',
        '110300'
    ),
    (
        '11.3.1',
        'ឃុំ ដាក់ដាំ',
        'Dak Dam Commune',
        '110301'
    ),
    (
        '11.3.2',
        'ឃុំ សែនមនោរម្យ',
        'Saen Meaknourum Commune',
        '110302'
    ),
    (
        '11.4',
        'ស្រុក ពេជ្រាដា',
        'Pechreada District',
        '110400'
    ),
    (
        '11.4.1',
        'ឃុំ ក្រង់តេះ',
        'Krang Teh Commune',
        '110401'
    ),
    (
        '11.4.2',
        'ឃុំ ពូជ្រៃ',
        'Pu Chrey Commune',
        '110402'
    ),
    (
        '11.4.3',
        'ឃុំ ស្រែអំពូម',
        'Srae Ampum Commune',
        '110403'
    ),
    (
        '11.4.4',
        'ឃុំ ប៊ូស្រា',
        'Bu Sra Commune',
        '110404'
    ),
    (
        '11.5',
        'ក្រុង សែនមនោរម្យ',
        'Saen Meaknourum Municipality',
        '110500'
    ),
    (
        '11.5.1',
        'សង្កាត់ មនោរម្យ',
        'Sangkat Meaknourum',
        '110501'
    ),
    (
        '11.5.2',
        'សង្កាត់ សុខដុម',
        'Sangkat Sokhak Dom',
        '110502'
    ),
    (
        '11.5.3',
        'សង្កាត់ ស្ពានមានជ័យ',
        'Sangkat Spean Mean Chey',
        '110503'
    ),
    (
        '11.5.4',
        'សង្កាត់ រមនា',
        'Sangkat Rummeaknea',
        '110504'
    ),
    (
        '12',
        'រាជធានី ភ្នំពេញ',
        'Phnom Penh Capital',
        '120000'
    ),
    (
        '12.1',
        'ខណ្ឌ ចំការមន',
        'Khan Chamkar Mon',
        '120100'
    ),
    (
        '12.1.1',
        'សង្កាត់ ទន្លេបាសាក់',
        'Sangkat Tonle Basak',
        '120101'
    ),
    (
        '12.1.2',
        'សង្កាត់ ទួលទំពូងទី ២',
        'Sangkat Tuol Tumpung Ti Pir',
        '120109'
    ),
    (
        '12.1.3',
        'សង្កាត់ ទួលទំពូងទី ១',
        'Sangkat Tuol Tumpung Ti Muoy',
        '120110'
    ),
    (
        '12.1.4',
        'សង្កាត់ បឹងត្របែក',
        'Sangkat Boeng Trabaek',
        '120111'
    ),
    (
        '12.1.5',
        'សង្កាត់ ផ្សារដើមថ្កូវ',
        'Sangkat Phsar Daeum Thkouv',
        '120112'
    ),
    (
        '12.2',
        'ខណ្ឌ ដូនពេញ',
        'Khan Doun Penh',
        '120200'
    ),
    (
        '12.2.1',
        'សង្កាត់ ផ្សារថ្មីទី ១',
        'Sangkat Phsar Thmei Ti Muoy',
        '120201'
    ),
    (
        '12.2.2',
        'សង្កាត់ ផ្សារថ្មីទី ២',
        'Sangkat Phsar Thmei Ti Pir',
        '120202'
    ),
    (
        '12.2.3',
        'សង្កាត់ ផ្សារថ្មីទី ៣',
        'Sangkat Phsar Thmei Ti Bei',
        '120203'
    ),
    (
        '12.2.4',
        'សង្កាត់ បឹងរាំង',
        'Sangkat Boeng Reang',
        '120204'
    ),
    (
        '12.2.5',
        'សង្កាត់ ផ្សារកណ្តាលទី១',
        'Sangkat Phsar Kandal Ti Muoy',
        '120205'
    ),
    (
        '12.2.6',
        'សង្កាត់ ផ្សារកណ្តាលទី២',
        'Sangkat Phsar Kandal Ti Pir',
        '120206'
    ),
    (
        '12.2.7',
        'សង្កាត់ ​ចតុមុខ',
        'Sangkat Chakto Mukh',
        '120207'
    ),
    (
        '12.2.8',
        'សង្កាត់ ជ័យជំនះ',
        'Sangkat Chey Chumneah',
        '120208'
    ),
    (
        '12.2.9',
        'សង្កាត់ ផ្សារចាស់',
        'Sangkat Phsar Chas',
        '120209'
    ),
    (
        '12.2.10',
        'សង្កាត់ ស្រះចក',
        'Sangkat Srah Chak',
        '120210'
    ),
    (
        '12.2.11',
        'សង្កាត់ ​វត្តភ្នំ',
        'Sangkat Voat Phnum',
        '120211'
    ),
    (
        '12.3',
        'ខណ្ឌ ៧មករា',
        'Khan Prampir Meakkakra',
        '120300'
    ),
    (
        '12.3.1',
        'សង្កាត់ អូរឫស្សីទី ១',
        'Sangkat Ou Ruessei Ti Muoy',
        '120301'
    ),
    (
        '12.3.2',
        'សង្កាត់ អូរឫស្សីទី ២',
        'Sangkat Ou Ruessei Ti Pir',
        '120302'
    ),
    (
        '12.3.3',
        'សង្កាត់ អូរឫស្សីទី ៣',
        'Sangkat Ou Ruessei Ti Bei',
        '120303'
    ),
    (
        '12.3.4',
        'សង្កាត់ អូរឫស្សីទី ៤',
        'Sangkat Ou Ruessei Ti Buon',
        '120304'
    ),
    (
        '12.3.5',
        'សង្កាត់ មនោរម្យ',
        'Sangkat Meaknourum',
        '120305'
    ),
    (
        '12.3.6',
        'សង្កាត់ ​មិត្តភាព',
        'Sangkat Mittakpheap',
        '120306'
    ),
    (
        '12.3.7',
        'សង្កាត់ វាលវង់',
        'Sangkat Veal Vung',
        '120307'
    ),
    (
        '12.3.8',
        'សង្កាត់ បឹងព្រលឹត',
        'Sangkat Boeng Proluet',
        '120308'
    ),
    (
        '12.4',
        'ខណ្ឌ ទួលគោក',
        'Khan Tuol Kouk',
        '120400'
    ),
    (
        '12.4.1',
        'សង្កាត់ ផ្សារដេប៉ូទី ១',
        'Sangkat Phsar Depou Ti Muoy',
        '120401'
    ),
    (
        '12.4.2',
        'សង្កាត់ ផ្សារដេប៉ូទី ២',
        'Sangkat Phsar Depou Ti Pir',
        '120402'
    ),
    (
        '12.4.3',
        'សង្កាត់ ផ្សារដេប៉ូទី ៣',
        'Sangkat Phsar Depou Ti Bei',
        '120403'
    ),
    (
        '12.4.4',
        'សង្កាត់ ទឹកល្អក់ទី ១',
        'Sangkat Tuek L''ak Ti Muoy',
        '120404'
    ),
    (
        '12.4.5',
        'សង្កាត់ ទឹកល្អក់ទី ២',
        'Sangkat Tuek L''ak Ti Pir',
        '120405'
    ),
    (
        '12.4.6',
        'សង្កាត់ ទឹកល្អក់ទី ៣',
        'Sangkat Tuek L''ak Ti Bei',
        '120406'
    ),
    (
        '12.4.7',
        'សង្កាត់ បឹងកក់ទី ១',
        'Sangkat Boeng Kak Ti Muoy',
        '120407'
    ),
    (
        '12.4.8',
        'សង្កាត់ បឹងកក់ទី ២',
        'Sangkat Boeng Kak Ti Pir',
        '120408'
    ),
    (
        '12.4.9',
        'សង្កាត់ ផ្សារដើមគរ',
        'Sangkat Phsar Daeum Kor',
        '120409'
    ),
    (
        '12.4.10',
        'សង្កាត់ បឹងសាឡាង',
        'Sangkat Boeng Salang',
        '120410'
    ),
    ('12.5', 'ខណ្ឌ ​ដង្កោ', 'Khan Dangkao', '120500'),
    (
        '12.5.1',
        'សង្កាត់ ដង្កោ',
        'Sangkat Dangkao',
        '120501'
    ),
    (
        '12.5.2',
        'សង្កាត់ ពងទឹក',
        'Sangkat Pong Tuek',
        '120507'
    ),
    (
        '12.5.3',
        'សង្កាត់ ព្រៃវែង',
        'Sangkat Prey Veaeng',
        '120508'
    ),
    (
        '12.5.4',
        'សង្កាត់ ព្រៃស',
        'Sangkat Prey Sa',
        '120510'
    ),
    (
        '12.5.5',
        'សង្កាត់ ក្រាំងពង្រ',
        'Sangkat Krang Pungro',
        '120512'
    ),
    (
        '12.5.6',
        'សង្កាត់ សាក់សំពៅ',
        'Sangkat Sak Sampov',
        '120514'
    ),
    (
        '12.5.7',
        'សង្កាត់ ជើងឯក',
        'Sangkat Cheung Aek',
        '120515'
    ),
    (
        '12.5.8',
        'សង្កាត់ គងនយ',
        'Sangkat Kong Noy',
        '120516'
    ),
    (
        '12.5.9',
        'សង្កាត់ ព្រែកកំពឹស',
        'Sangkat Preaek Kampues',
        '120517'
    ),
    (
        '12.5.10',
        'សង្កាត់ រលួស',
        'Sangkat Roluos',
        '120518'
    ),
    (
        '12.5.11',
        'សង្កាត់ ស្ពានថ្ម',
        'Sangkat Spean Thma',
        '120519'
    ),
    (
        '12.5.12',
        'សង្កាត់ ទៀន',
        'Sangkat Tien',
        '120520'
    ),
    (
        '12.6',
        'ខណ្ឌ មានជ័យ',
        'Khan Mean Chey',
        '120600'
    ),
    (
        '12.6.1',
        'សង្កាត់ ចាក់អង្រែលើ',
        'Sangkat Chak Angrae Leu',
        '120606'
    ),
    (
        '12.6.2',
        'សង្កាត់ ចាក់អង្រែក្រោម',
        'Sangkat Chak Angrae Kraom',
        '120607'
    ),
    (
        '12.6.3',
        'សង្កាត់ ស្ទឹងមានជ័យទី១',
        'Sangkat Stueng Mean Chey Ti Muoy',
        '120608'
    ),
    (
        '12.6.4',
        'សង្កាត់ ស្ទឹងមានជ័យទី២',
        'Sangkat Stueng Mean Chey Ti Pir',
        '120609'
    ),
    (
        '12.6.5',
        'សង្កាត់ ស្ទឹងមានជ័យទី៣',
        'Sangkat Stueng Mean Chey Ti Bei',
        '120610'
    ),
    (
        '12.6.6',
        'សង្កាត់ បឹងទំពុនទី១',
        'Sangkat Boeng Tumpun Ti Muoy',
        '120611'
    ),
    (
        '12.6.7',
        'សង្កាត់ បឹងទំពុនទី២',
        'Sangkat Boeng Tumpun Ti Pir',
        '120612'
    ),
    (
        '12.7',
        'ខណ្ឌ ឫស្សីកែវ',
        'Khan Ruessei Kaev',
        '120700'
    ),
    (
        '12.7.1',
        'សង្កាត់ ស្វាយប៉ាក',
        'Sangkat Svay Pak',
        '120703'
    ),
    (
        '12.7.2',
        'សង្កាត់ គីឡូម៉ែត្រលេខ៦',
        'Sangkat Kiloumaet Lekh Prammuoy',
        '120704'
    ),
    (
        '12.7.3',
        'សង្កាត់ ឫស្សីកែវ',
        'Sangkat Ruessei Kaev',
        '120706'
    ),
    (
        '12.7.4',
        'សង្កាត់ ច្រាំងចំរេះទី ១',
        'Sangkat Chrang Chamreh Ti Muoy',
        '120711'
    ),
    (
        '12.7.5',
        'សង្កាត់ ច្រាំងចំរេះទី ២',
        'Sangkat Chrang Chamreh Ti Pir',
        '120712'
    ),
    (
        '12.7.6',
        'សង្កាត់ ទួលសង្កែទី ១',
        'Sangkat Tuol Sangkae Ti Mouy',
        '120713'
    ),
    (
        '12.7.7',
        'សង្កាត់ ទួលសង្កែទី ២',
        'Sangkat Tuol Sangkae Ti Pir',
        '120714'
    ),
    (
        '12.8',
        'ខណ្ឌ សែនសុខ',
        'Khan Saen Sokh',
        '120800'
    ),
    (
        '12.8.1',
        'សង្កាត់ ភ្នំពេញថ្មី',
        'Sangkat  Phnum Penh Thmei',
        '120801'
    ),
    (
        '12.8.2',
        'សង្កាត់ ទឹកថ្លា',
        'Sangkat Tuek Thla',
        '120802'
    ),
    (
        '12.8.3',
        'សង្កាត់ ឃ្មួញ',
        'Sangkat Khmuonh',
        '120803'
    ),
    (
        '12.8.4',
        'សង្កាត់ ក្រាំងធ្នង់',
        'Sangkat Krang Thnung',
        '120804'
    ),
    (
        '12.8.5',
        'សង្កាត់ អូរបែកក្អម',
        'Sangkat Ou Baek K''am',
        '120805'
    ),
    (
        '12.8.6',
        'សង្កាត់ គោកឃ្លាង',
        'Sangkat Kouk Khleang',
        '120806'
    ),
    (
        '12.9',
        'ខណ្ឌ ពោធិ៍សែនជ័យ',
        'Khan Pou Saen Chey',
        '120900'
    ),
    (
        '12.9.1',
        'សង្កាត់ សំរោងក្រោម',
        'Sangkat Samraong Kraom',
        '120911'
    ),
    (
        '12.9.2',
        'សង្កាត់ ត្រពាំងក្រសាំង',
        'Sangkat Trapeang Krasang',
        '120913'
    ),
    (
        '12.9.3',
        'សង្កាត់ កាកាបទី១',
        'Sangkat Kakab Ti Muoy',
        '120914'
    ),
    (
        '12.9.4',
        'សង្កាត់ កាកាបទី២',
        'Sangkat Kakab Ti Pir',
        '120915'
    ),
    (
        '12.9.5',
        'សង្កាត់ ចោមចៅទី១',
        'Sangkat Chaom Chau Ti Muoy',
        '120916'
    ),
    (
        '12.9.6',
        'សង្កាត់ ចោមចៅទី២',
        'Sangkat Chaom Chau Ti Pir',
        '120917'
    ),
    (
        '12.9.7',
        'សង្កាត់ ចោមចៅទី៣',
        'Sangkat Chaom Chau  Ti Bei',
        '120918'
    ),
    (
        '12.1',
        'ខណ្ឌ ច្បារអំពៅ',
        'Khan Chbar Ampov',
        '121000'
    ),
    (
        '12.10.1',
        'សង្កាត់ ក្បាលកោះ',
        'Sangkat Kbal Kaoh',
        '121001'
    ),
    (
        '12.10.2',
        'សង្កាត់ ច្បារអំពៅទី ១',
        'Sangkat Chbar Ampov Ti Muoy',
        '121002'
    ),
    (
        '12.10.3',
        'សង្កាត់ ច្បារអំពៅទី ២',
        'Sangkat Chbar Ampov Ti Pir',
        '121003'
    ),
    (
        '12.10.4',
        'សង្កាត់ និរោធ',
        'Sangkat Nirouth',
        '121004'
    ),
    (
        '12.10.5',
        'សង្កាត់ ព្រែកប្រា',
        'Sangkat Preaek Pra',
        '121005'
    ),
    (
        '12.10.6',
        'សង្កាត់ ព្រែកឯង',
        'Sangkat Preaek Aeng',
        '121006'
    ),
    (
        '12.10.7',
        'សង្កាត់ ព្រែកថ្មី',
        'Sangkat Preaek Thmei',
        '121007'
    ),
    (
        '12.10.8',
        'សង្កាត់ វាលស្បូវ',
        'Sangkat Veal Sbouv',
        '121008'
    ),
    (
        '12.11',
        'ខណ្ឌ ជ្រោយចង្វារ',
        'Khan Chrouy Changvar',
        '121100'
    ),
    (
        '12.11.1',
        'សង្កាត់ កោះដាច់',
        'Sangkat Kaoh Dach',
        '121101'
    ),
    (
        '12.11.2',
        'សង្កាត់ ជ្រោយចង្វារ',
        'Sangkat Chrouy Changvar',
        '121102'
    ),
    (
        '12.11.3',
        'សង្កាត់ បាក់ខែង',
        'Sangkat Bak Khaeng',
        '121103'
    ),
    (
        '12.11.4',
        'សង្កាត់ ព្រែកលៀប',
        'Sangkat Preaek Lieb',
        '121104'
    ),
    (
        '12.11.5',
        'សង្កាត់ ព្រែកតាសេក',
        'Sangkat Preaek Ta Sek',
        '121105'
    ),
    (
        '12.12',
        'ខណ្ឌ ព្រែកព្នៅ',
        'Khan Preaek Pnov',
        '121200'
    ),
    (
        '12.12.1',
        'សង្កាត់ គោករកា',
        'Sangkat Kouk Roka',
        '121201'
    ),
    (
        '12.12.2',
        'សង្កាត់ ព្រែកព្នៅ',
        'Sangkat Preaek Phnov',
        '121202'
    ),
    (
        '12.12.3',
        'សង្កាត់ ពញាពន់',
        'Sangkat Ponhea Pun',
        '121203'
    ),
    (
        '12.12.4',
        'សង្កាត់ ពន្សាំង',
        'Sangkat Punsang',
        '121204'
    ),
    (
        '12.12.5',
        'សង្កាត់ សំរោង',
        'Sangkat Samraong',
        '121205'
    ),
    (
        '12.13',
        'ខណ្ឌ បឹងកេងកង',
        'Khan Boeng Keng Kang',
        '121300'
    ),
    (
        '12.13.1',
        'សង្កាត់ បឹងកេងកងទី ១',
        'Sangkat Boeng Keng Kang Ti Muoy',
        '121301'
    ),
    (
        '12.13.2',
        'សង្កាត់ បឹងកេងកងទី ២',
        'Sangkat Boeng Keng Kang Ti Pir',
        '121302'
    ),
    (
        '12.13.3',
        'សង្កាត់ បឹងកេងកងទី ៣',
        'Sangkat Boeng Keng Kang Ti Bei',
        '121303'
    ),
    (
        '12.13.4',
        'សង្កាត់ អូឡាំពិក',
        'Sangkat Oulampik',
        '121304'
    ),
    (
        '12.13.5',
        'សង្កាត់ ទំនប់ទឹក',
        'Sangkat Tumnub Tuek',
        '121305'
    ),
    (
        '12.13.6',
        'សង្កាត់ ទួលស្វាយព្រៃទី ១',
        'Sangkat Tuol Svay Prey Ti Muoy',
        '121306'
    ),
    (
        '12.13.7',
        'សង្កាត់ ទួលស្វាយព្រៃទី ២',
        'Sangkat Tuol Svay Prey Ti Pir',
        '121307'
    ),
    ('12.14', 'ខណ្ឌ កំបូល', 'Khan Kamboul', '121400'),
    (
        '12.14.1',
        'សង្កាត់ កំបូល',
        'Sangkat Kamboul',
        '121401'
    ),
    (
        '12.14.2',
        'សង្កាត់ កន្ទោក',
        'Sangkat Kantaok',
        '121402'
    ),
    (
        '12.14.3',
        'សង្កាត់ ឪឡោក',
        'Sangkat Ovlaok',
        '121403'
    ),
    (
        '12.14.4',
        'សង្កាត់ ស្នោរ',
        'Sangkat Snaor',
        '121404'
    ),
    (
        '12.14.5',
        'សង្កាត់ ភ្លើងឆេះរទេះ',
        'Sangkat Phleung Chheh Roteh',
        '121405'
    ),
    (
        '12.14.6',
        'សង្កាត់ បឹងធំ',
        'Sangkat Boeng Thum',
        '121406'
    ),
    (
        '12.14.7',
        'សង្កាត់ ប្រទះឡាង',
        'Sangkat Prateah Lang',
        '121407'
    ),
    (
        '13',
        'ខេត្ត ព្រះវិហារ',
        'Preah Vihear Province',
        '130000'
    ),
    (
        '13.1',
        'ស្រុក ជ័យសែន',
        'Chey Saen District',
        '130100'
    ),
    (
        '13.1.1',
        'ឃុំ ស្អាង',
        'S''ang Commune',
        '130101'
    ),
    ('13.1.2', 'ឃុំ តស៊ូ', 'Tasu Commune', '130102'),
    ('13.1.3', 'ឃុំ ខ្យង', 'Khyang Commune', '130103'),
    (
        '13.1.4',
        'ឃុំ ​ច្រាច់',
        'Chrach Commune',
        '130104'
    ),
    ('13.1.5', 'ឃុំ ធ្មា', 'Thmea Commune', '130105'),
    (
        '13.1.6',
        'ឃុំ ពុទ្រា',
        'Puttrea Commune',
        '130106'
    ),
    ('13.2', 'ស្រុក ឆែប', 'Chhaeb District', '130200'),
    (
        '13.2.1',
        'ឃុំ ឆែបមួយ',
        'Chhaeb Muoy Commune',
        '130201'
    ),
    (
        '13.2.2',
        'ឃុំ ឆែបពីរ',
        'Chhaeb Pir Commune',
        '130202'
    ),
    (
        '13.2.3',
        'ឃុំ សង្កែមួយ',
        'Sangkae Muoy Commune',
        '130203'
    ),
    (
        '13.2.4',
        'ឃុំ សង្កែពីរ',
        'Sangkae Pir Commune',
        '130204'
    ),
    (
        '13.2.5',
        'ឃុំ ម្លូព្រៃមួយ',
        'Mlu Prey Muoy Commune',
        '130205'
    ),
    (
        '13.2.6',
        'ឃុំ ម្លូព្រៃពីរ',
        'Mlu Prey Pir Commune',
        '130206'
    ),
    (
        '13.2.7',
        'ឃុំ កំពង់ស្រឡៅមួយ',
        'Kampong Sralau Muoy Commune',
        '130207'
    ),
    (
        '13.2.8',
        'ឃុំ កំពង់ស្រឡៅពីរ',
        'Kampong Sralau Pir Commune',
        '130208'
    ),
    (
        '13.3',
        'ស្រុក ជាំក្សាន្ត',
        'Choam Khsan District',
        '130300'
    ),
    (
        '13.3.1',
        'ឃុំ ជាំក្សាន្ត',
        'Choam Ksan Commune',
        '130301'
    ),
    (
        '13.3.2',
        'ឃុំ ទឹកក្រហម',
        'Tuek Kraham Commune',
        '130302'
    ),
    (
        '13.3.3',
        'ឃុំ ព្រីងធំ',
        'Pring Thum Commune',
        '130303'
    ),
    (
        '13.3.4',
        'ឃុំ រំដោះស្រែ',
        'Rumdaoh Srae Commune',
        '130304'
    ),
    ('13.3.5', 'ឃុំ យាង', 'Yeang Commune', '130305'),
    (
        '13.3.6',
        'ឃុំ កន្ទួត',
        'Kantuot Commune',
        '130306'
    ),
    (
        '13.3.7',
        'ឃុំ មរកត',
        'Morokat Commune',
        '130307'
    ),
    (
        '13.3.8',
        'ឃុំ ស្រអែម',
        'Sra Aem Commune',
        '130308'
    ),
    (
        '13.4',
        'ស្រុក គូលែន',
        'Kuleaen District',
        '130400'
    ),
    (
        '13.4.1',
        'ឃុំ គូលែនត្បូង',
        'Kuleaen Tboung Commune',
        '130401'
    ),
    (
        '13.4.2',
        'ឃុំ គូលែនជើង',
        'Kuleaen Cheung Commune',
        '130402'
    ),
    ('13.4.3', 'ឃុំ ថ្មី', 'Thmei Commune', '130403'),
    (
        '13.4.4',
        'ឃុំ ភ្នំពេញ',
        'Phnum Penh Commune',
        '130404'
    ),
    (
        '13.4.5',
        'ឃុំ ភ្នំត្បែងពីរ',
        'Phnum Tbaeng Pir Commune',
        '130405'
    ),
    (
        '13.4.6',
        'ឃុំ ស្រយង់',
        'Srayang Commune',
        '130406'
    ),
    (
        '13.5',
        'ស្រុក រវៀង',
        'Rovieng District',
        '130500'
    ),
    ('13.5.1', 'ឃុំ របៀប', 'Robieb Commune', '130501'),
    (
        '13.5.2',
        'ឃុំ រស្មី',
        'Reaksmei Commune',
        '130502'
    ),
    ('13.5.3', 'ឃុំ រហ័ស', 'Rohas Commune', '130503'),
    (
        '13.5.4',
        'ឃុំ រុងរឿង',
        'Rung Roeang Commune',
        '130504'
    ),
    (
        '13.5.5',
        'ឃុំ រីករាយ',
        'Rik Reay Commune',
        '130505'
    ),
    (
        '13.5.6',
        'ឃុំ រួសរាន់',
        'Ruos Roan Commune',
        '130506'
    ),
    (
        '13.5.7',
        'ឃុំ រតនៈ',
        'Rottaknak Commune',
        '130507'
    ),
    (
        '13.5.8',
        'ឃុំ រៀបរយ',
        'Rieb Roy Commune',
        '130508'
    ),
    (
        '13.5.9',
        'ឃុំ រក្សា',
        'Reaksa Commune',
        '130509'
    ),
    (
        '13.5.10',
        'ឃុំ រំដោះ',
        'Rumdaoh Commune',
        '130510'
    ),
    (
        '13.5.11',
        'ឃុំ រមទម',
        'Rumtum Commune',
        '130511'
    ),
    (
        '13.5.12',
        'ឃុំ រមណីយ',
        'Rummeakney Commune',
        '130512'
    ),
    (
        '13.6',
        'ស្រុក សង្គមថ្មី',
        'Sangkum Thmei District',
        '130600'
    ),
    (
        '13.6.1',
        'ឃុំ ចំរើន',
        'Chamraeun Commune',
        '130601'
    ),
    ('13.6.2', 'ឃុំ រអាង', 'Ro Ang Commune', '130602'),
    (
        '13.6.3',
        'ឃុំ ភ្នំត្បែងមួយ',
        'Phnum Tbaeng Muoy Commune',
        '130603'
    ),
    ('13.6.4', 'ឃុំ ស្តៅ', 'Sdau Commune', '130604'),
    (
        '13.6.5',
        'ឃុំ រណសិរ្ស',
        'Reaknak Se Commune',
        '130605'
    ),
    (
        '13.7',
        'ស្រុក ត្បែងមានជ័យ',
        'Tbaeng Mean Chey District',
        '130700'
    ),
    (
        '13.7.1',
        'ឃុំ ឈានមុខ',
        'Chhean Mukh Commune',
        '130703'
    ),
    ('13.7.2', 'ឃុំ ពោធិ៍', 'Pou Commune', '130704'),
    (
        '13.7.3',
        'ឃុំ ប្រមេរុ',
        'Pramae Commune',
        '130705'
    ),
    (
        '13.7.4',
        'ឃុំ ព្រះឃ្លាំង',
        'Preah Khleang Commune',
        '130706'
    ),
    (
        '13.8',
        'ក្រុង ព្រះវិហារ',
        'Preah Vihear Municipality',
        '130800'
    ),
    (
        '13.8.1',
        'សង្កាត់ កំពង់ប្រណាក',
        'Sangkat Kampong Pranak',
        '130801'
    ),
    (
        '13.8.2',
        'សង្កាត់ ប៉ាលហាល',
        'Sangkat Pal Hal',
        '130802'
    ),
    (
        '14',
        'ខេត្ត ព្រៃវែង',
        'Prey Veng Province',
        '140000'
    ),
    (
        '14.1',
        'ស្រុក បាភ្នំ',
        'Ba Phnum District',
        '140100'
    ),
    (
        '14.1.1',
        'ឃុំ បឹងព្រះ',
        'Boeng Preah Commune',
        '140101'
    ),
    (
        '14.1.2',
        'ឃុំ ជើងភ្នំ',
        'Cheung Phnum Commune',
        '140102'
    ),
    (
        '14.1.3',
        'ឃុំ ឈើកាច់',
        'Chheu Kach Commune',
        '140103'
    ),
    (
        '14.1.4',
        'ឃុំ រក្សជ័យ',
        'Reak Chey Commune',
        '140104'
    ),
    (
        '14.1.5',
        'ឃុំ រោងដំរី',
        'Roung Damrei Commune',
        '140105'
    ),
    (
        '14.1.6',
        'ឃុំ ស្តៅកោង',
        'Sdau Kaong Commune',
        '140106'
    ),
    (
        '14.1.7',
        'ឃុំ ស្ពឺ ក',
        'Spueu Ka Commune',
        '140107'
    ),
    (
        '14.1.8',
        'ឃុំ ស្ពឺ ខ',
        'Spueu Kha Commune',
        '140108'
    ),
    ('14.1.9', 'ឃុំ ធាយ', 'Theay Commune', '140109'),
    (
        '14.2',
        'ស្រុក កំចាយមារ',
        'Kamchay Mear District',
        '140200'
    ),
    ('14.2.1', 'ឃុំ ជាច', 'Cheach Commune', '140201'),
    (
        '14.2.2',
        'ឃុំ ដូនកឹង',
        'Doun Koeng Commune',
        '140202'
    ),
    (
        '14.2.3',
        'ឃុំ ក្រញូង',
        'Kranhung Commune',
        '140203'
    ),
    (
        '14.2.4',
        'ឃុំ ក្របៅ',
        'Krabau Commune',
        '140204'
    ),
    (
        '14.2.5',
        'ឃុំ ស៊ាងឃ្វាង',
        'Seang Khveang Commune',
        '140205'
    ),
    (
        '14.2.6',
        'ឃុំ ស្មោងខាងជើង',
        'Smaong Cheung Commune',
        '140206'
    ),
    (
        '14.2.7',
        'ឃុំ ស្មោងខាងត្បូង',
        'Smaong Tboung Commune',
        '140207'
    ),
    (
        '14.2.8',
        'ឃុំ ត្របែក',
        'Trabaek Commune',
        '140208'
    ),
    (
        '14.3',
        'ស្រុក ​កំពង់ត្របែក',
        'Kampong Trabaek District',
        '140300'
    ),
    (
        '14.3.1',
        'ឃុំ អន្សោង',
        'Ansaong Commune',
        '140301'
    ),
    ('14.3.2', 'ឃុំ ចាម', 'Cham Commune', '140302'),
    (
        '14.3.3',
        'ឃុំ ជាងដែក',
        'Cheang Daek Commune',
        '140303'
    ),
    ('14.3.4', 'ឃុំ ជ្រៃ', 'Chrey Commune', '140304'),
    (
        '14.3.5',
        'ឃុំ កន្សោមអក',
        'Kansaom Ak Commune',
        '140305'
    ),
    (
        '14.3.6',
        'ឃុំ គោខ្ចក',
        'Kou Khchak Commune',
        '140306'
    ),
    (
        '14.3.7',
        'ឃុំ កំពង់ត្របែក',
        'Kampong Trabaek Commune',
        '140307'
    ),
    (
        '14.3.8',
        'ឃុំ ពាមមន្ទារ',
        'Peam Muntear Commune',
        '140308'
    ),
    (
        '14.3.9',
        'ឃុំ ប្រាសាទ',
        'Prasat Commune',
        '140309'
    ),
    (
        '14.3.10',
        'ឃុំ ប្រធាតុ',
        'Pratheat Commune',
        '140310'
    ),
    (
        '14.3.11',
        'ឃុំ ព្រៃឈរ',
        'Prey Chhor Commune',
        '140311'
    ),
    (
        '14.3.12',
        'ឃុំ ព្រៃពោន',
        'Prey Poun Commune',
        '140312'
    ),
    (
        '14.3.13',
        'ឃុំ ថ្កូវ',
        'Thkouv Commune',
        '140313'
    ),
    (
        '14.4',
        'ស្រុក កញ្ជ្រៀច',
        'Kanhchriech District',
        '140400'
    ),
    (
        '14.4.1',
        'ឃុំ ចុងអំពិល',
        'Chong Ampil Commune',
        '140401'
    ),
    (
        '14.4.2',
        'ឃុំ កញ្ជ្រៀច',
        'Kanhchriech Commune',
        '140402'
    ),
    (
        '14.4.3',
        'ឃុំ ក្តឿងរាយ',
        'Kdoeang Reay Commune',
        '140403'
    ),
    (
        '14.4.4',
        'ឃុំ គោកគង់កើត',
        'Kouk Kung Kaeut Commune',
        '140404'
    ),
    (
        '14.4.5',
        'ឃុំ គោកគង់លិច',
        'Kouk Kung Lech Commune',
        '140405'
    ),
    ('14.4.6', 'ឃុំ ព្រាល', 'Preal Commune', '140406'),
    (
        '14.4.7',
        'ឃុំ ថ្មពូន',
        'Thma Pun Commune',
        '140407'
    ),
    ('14.4.8', 'ឃុំ ត្នោត', 'Tnaot Commune', '140408'),
    (
        '14.5',
        'ស្រុក មេសាង',
        'Me Sang District',
        '140500'
    ),
    (
        '14.5.1',
        'ឃុំ អង្គរសរ',
        'Angkor Sar Commune',
        '140501'
    ),
    ('14.5.2', 'ឃុំ ច្រេស', 'Chres Commune', '140502'),
    (
        '14.5.3',
        'ឃុំ ជីផុច',
        'Chi Phoch Commune',
        '140503'
    ),
    (
        '14.5.4',
        'ឃុំ ព្រៃឃ្នេស',
        'Prey Khnes Commune',
        '140504'
    ),
    (
        '14.5.5',
        'ឃុំ ព្រៃរំដេង',
        'Prey Rumdeng Commune',
        '140505'
    ),
    (
        '14.5.6',
        'ឃុំ ព្រៃទទឹង',
        'Prey Totueng Commune',
        '140506'
    ),
    (
        '14.5.7',
        'ឃុំ ស្វាយជ្រុំ',
        'Svay Chrum Commune',
        '140507'
    ),
    (
        '14.5.8',
        'ឃុំ ត្រពាំងស្រែ',
        'Trapeang Srae Commune',
        '140508'
    ),
    (
        '14.6',
        'ស្រុក ពាមជរ',
        'Peam Chor District',
        '140600'
    ),
    (
        '14.6.1',
        'ឃុំ អង្គរអង្គ',
        'Angkor Ang Commune',
        '140601'
    ),
    (
        '14.6.2',
        'ឃុំ កំពង់ប្រាសាទ',
        'Kampong Prasat Commune',
        '140602'
    ),
    (
        '14.6.3',
        'ឃុំ កោះចេក',
        'Kaoh Chek Commune',
        '140603'
    ),
    (
        '14.6.4',
        'ឃុំ កោះរកា',
        'Kaoh Roka Commune',
        '140604'
    ),
    (
        '14.6.5',
        'ឃុំ កោះសំពៅ',
        'Kaoh Sampov Commune',
        '140605'
    ),
    (
        '14.6.6',
        'ឃុំ ក្រាំងតាយ៉ង',
        'Krang Ta Yang Commune',
        '140606'
    ),
    (
        '14.6.7',
        'ឃុំ ព្រែកក្របៅ',
        'Preaek Krabau Commune',
        '140607'
    ),
    (
        '14.6.8',
        'ឃុំ ព្រែកសំបួរ',
        'Preaek Sambuor Commune',
        '140608'
    ),
    (
        '14.6.9',
        'ឃុំ ឫស្សីស្រុក',
        'Ruessei Srok Commune',
        '140609'
    ),
    (
        '14.6.10',
        'ឃុំ ស្វាយភ្លោះ',
        'Svay Phluoh Commune',
        '140610'
    ),
    (
        '14.7',
        'ស្រុក ពាមរក៍',
        'Peam Ro District',
        '140700'
    ),
    (
        '14.7.1',
        'ឃុំ បាបោង',
        'Ba Baong Commune',
        '140701'
    ),
    (
        '14.7.2',
        'ឃុំ បន្លិចប្រាសាទ',
        'Banlech Prasat Commune',
        '140702'
    ),
    (
        '14.7.3',
        'ឃុំ អ្នកលឿង',
        'Neak Loeang Commune',
        '140703'
    ),
    (
        '14.7.4',
        'ឃុំ ពាមមានជ័យ',
        'Peam Mean Chey Commune',
        '140704'
    ),
    (
        '14.7.5',
        'ឃុំ ពាមរក៍',
        'Peam Ro Commune',
        '140705'
    ),
    (
        '14.7.6',
        'ឃុំ ព្រែកខ្សាយ ក',
        'Preaek Khsay Ka Commune',
        '140706'
    ),
    (
        '14.7.7',
        'ឃុំ ព្រែកខ្សាយ ខ',
        'Preaek Khsay Kha Commune',
        '140707'
    ),
    (
        '14.7.8',
        'ឃុំ ព្រៃកណ្តៀង',
        'Prey Kandieng Commune',
        '140708'
    ),
    (
        '14.8',
        'ស្រុក ពារាំង',
        'Pea Reang District',
        '140800'
    ),
    (
        '14.8.1',
        'ឃុំ កំពង់ពពិល',
        'Kampong Popil Commune',
        '140801'
    ),
    (
        '14.8.2',
        'ឃុំ កញ្ចំ',
        'Kanhcham Commune',
        '140802'
    ),
    (
        '14.8.3',
        'ឃុំ កំពង់ប្រាំង',
        'Kampong Prang Commune',
        '140803'
    ),
    (
        '14.8.4',
        'ឃុំ មេសរប្រចាន់',
        'Mesar Prachan Commune',
        '140805'
    ),
    (
        '14.8.5',
        'ឃុំ ព្រៃព្នៅ',
        'Prey Pnov Commune',
        '140807'
    ),
    (
        '14.8.6',
        'ឃុំ ព្រៃស្នៀត',
        'Prey Sniet Commune',
        '140808'
    ),
    (
        '14.8.7',
        'ឃុំ ព្រៃស្រឡិត',
        'Prey Sralet Commune',
        '140809'
    ),
    ('14.8.8', 'ឃុំ រាប', 'Reab Commune', '140810'),
    ('14.8.9', 'ឃុំ រកា', 'Roka Commune', '140811'),
    (
        '14.9',
        'ស្រុក ព្រះស្តេច',
        'Preah Sdach District',
        '140900'
    ),
    (
        '14.9.1',
        'ឃុំ អង្គររាជ្យ',
        'Angkor Reach Commune',
        '140901'
    ),
    (
        '14.9.2',
        'ឃុំ បន្ទាយចក្រី',
        'Banteay Chakrei Commune',
        '140902'
    ),
    (
        '14.9.3',
        'ឃុំ បឹងដោល',
        'Boeng Daol Commune',
        '140903'
    ),
    (
        '14.9.4',
        'ឃុំ ជៃកំពក',
        'Chey Kampok Commune',
        '140904'
    ),
    (
        '14.9.5',
        'ឃុំ កំពង់សឹង',
        'Kampong Soeng Commune',
        '140905'
    ),
    (
        '14.9.6',
        'ឃុំ ក្រាំងស្វាយ',
        'Krang Svay Commune',
        '140906'
    ),
    ('14.9.7', 'ឃុំ ល្វា', 'Lvea Commune', '140907'),
    (
        '14.9.8',
        'ឃុំ ព្រះស្តេច',
        'Preah Sdach Commune',
        '140908'
    ),
    (
        '14.9.9',
        'ឃុំ រាធរ',
        'Reathor Commune',
        '140909'
    ),
    (
        '14.9.10',
        'ឃុំ រំចេក',
        'Rumchek Commune',
        '140910'
    ),
    (
        '14.9.11',
        'ឃុំ សេនារាជឧត្តម',
        'Sena Reach Otdam Commune',
        '140911'
    ),
    (
        '14.1',
        'ក្រុង ព្រៃវែង',
        'Prey Veaeng Municipality',
        '141000'
    ),
    (
        '14.10.1',
        'សង្កាត់ បារាយណ៍',
        'Sangkat Baray',
        '141001'
    ),
    (
        '14.10.2',
        'សង្កាត់ ជើងទឹក',
        'Sangkat Cheung Tuek',
        '141002'
    ),
    (
        '14.10.3',
        'សង្កាត់ កំពង់លាវ',
        'Sangkat Kampong Leav',
        '141003'
    ),
    (
        '14.10.4',
        'សង្កាត់ តាកោ',
        'Sangkat Ta Kao',
        '141004'
    ),
    (
        '14.11',
        'ស្រុក ពោធិ៍រៀង',
        'Pou Rieng District',
        '141100'
    ),
    (
        '14.11.1',
        'ឃុំ ពោធិ៍រៀង',
        'Pou Rieng Commune',
        '141104'
    ),
    (
        '14.11.2',
        'ឃុំ ព្រែកអន្ទះ',
        'Preaek Anteah Commune',
        '141105'
    ),
    (
        '14.11.3',
        'ឃុំ ព្រែកជ្រៃ',
        'Preaek Chrey Commune',
        '141106'
    ),
    (
        '14.11.4',
        'ឃុំ ព្រៃកន្លោង',
        'Prey Kanlaong Commune',
        '141107'
    ),
    (
        '14.11.5',
        'ឃុំ កំពង់ឫស្សី',
        'Kampong Ruessei Commune',
        '141109'
    ),
    (
        '14.11.6',
        'ឃុំ ព្រែកតាសរ',
        'Preaek Ta Sar Commune',
        '141110'
    ),
    (
        '14.12',
        'ស្រុក  ស៊ីធរកណ្តាល',
        'Sithor Kandal District',
        '141200'
    ),
    (
        '14.12.1',
        'ឃុំ អំពិលក្រៅ',
        'Ampil Krau Commune',
        '141201'
    ),
    (
        '14.12.2',
        'ឃុំ ជ្រៃឃ្មុំ',
        'Chrey Khmum Commune',
        '141202'
    ),
    ('14.12.3', 'ឃុំ ល្វេ', 'Lve Commune', '141203'),
    (
        '14.12.4',
        'ឃុំ ព្នៅ​ទី ១',
        'Pnov Ti Muoy Commune',
        '141204'
    ),
    (
        '14.12.5',
        'ឃុំ ព្នៅទី ២',
        'Pnov Ti Pir Commune',
        '141205'
    ),
    (
        '14.12.6',
        'ឃុំ ពោធិ៍ទី',
        'Pou Ti Commune',
        '141206'
    ),
    (
        '14.12.7',
        'ឃុំ ព្រែកចង្ក្រាន',
        'Preaek Changkran Commune',
        '141207'
    ),
    (
        '14.12.8',
        'ឃុំ ព្រៃដើមថ្នឹង',
        'Prey Daeum Thnoeng Commune',
        '141208'
    ),
    (
        '14.12.9',
        'ឃុំ ព្រៃទឹង',
        'Prey Tueng Commune',
        '141209'
    ),
    (
        '14.12.10',
        'ឃុំ រំលេច',
        'Rumlech Commune',
        '141210'
    ),
    (
        '14.12.11',
        'ឃុំ ឫស្សីសាញ់',
        'Ruessei Sanh Commune',
        '141211'
    ),
    (
        '14.13',
        'ស្រុក ស្វាយអន្ទរ',
        'Svay Antor District',
        '141300'
    ),
    (
        '14.13.1',
        'ឃុំ អង្គរទ្រេត',
        'Angkor Tret Commune',
        '141301'
    ),
    (
        '14.13.2',
        'ឃុំ ជាខ្លាង',
        'Chea Khlang Commune',
        '141302'
    ),
    ('14.13.3', 'ឃុំ ជ្រៃ', 'Chrey Commune', '141303'),
    (
        '14.13.4',
        'ឃុំ ដំរីពួន',
        'Damrei Puon Commune',
        '141304'
    ),
    (
        '14.13.5',
        'ឃុំ មេបុណ្យ',
        'Me Bon Commune',
        '141305'
    ),
    (
        '14.13.6',
        'ឃុំ ពានរោង',
        'Pean Roung Commune',
        '141306'
    ),
    (
        '14.13.7',
        'ឃុំ ពពឺស',
        'Popueus Commune',
        '141307'
    ),
    (
        '14.13.8',
        'ឃុំ ព្រៃខ្លា',
        'Prey Khla Commune',
        '141308'
    ),
    (
        '14.13.9',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '141309'
    ),
    (
        '14.13.10',
        'ឃុំ ស្វាយអន្ទរ',
        'Svay Antor Commune',
        '141310'
    ),
    (
        '14.13.11',
        'ឃុំ ទឹកថ្លា',
        'Tuek Thla Commune',
        '141311'
    ),
    (
        '15',
        'ខេត្ត ពោធិ៍សាត់',
        'Pursat Province',
        '150000'
    ),
    (
        '15.1',
        'ស្រុក បាកាន',
        'Bakan District',
        '150100'
    ),
    (
        '15.1.1',
        'ឃុំ បឹងបត់កណ្តាល',
        'Boeng Bat Kandaol Commune',
        '150101'
    ),
    (
        '15.1.2',
        'ឃុំ បឹងខ្នារ',
        'Boeng Khnar Commune',
        '150102'
    ),
    (
        '15.1.3',
        'ឃុំ ខ្នារទទឹង',
        'Khnar Totueng Commune',
        '150103'
    ),
    (
        '15.1.4',
        'ឃុំ មេទឹក',
        'Me Tuek Commune',
        '150104'
    ),
    (
        '15.1.5',
        'ឃុំ អូរតាប៉ោង',
        'Ou Ta Paong Commune',
        '150105'
    ),
    (
        '15.1.6',
        'ឃុំ រំលេច',
        'Rumlech Commune',
        '150106'
    ),
    (
        '15.1.7',
        'ឃុំ ស្នាមព្រះ',
        'Snam Preah Commune',
        '150107'
    ),
    (
        '15.1.8',
        'ឃុំ ស្វាយដូនកែវ',
        'Svay Doun Kaev Commune',
        '150108'
    ),
    (
        '15.1.9',
        'ឃុំ ត្រពាំងជង',
        'Trapeang Chong Commune',
        '150110'
    ),
    (
        '15.2',
        'ស្រុក កណ្តៀង',
        'Kandieng District',
        '150200'
    ),
    (
        '15.2.1',
        'ឃុំ អន្លង់វិល',
        'Anlung Vil Commune',
        '150201'
    ),
    (
        '15.2.2',
        'ឃុំ កណ្តៀង',
        'Kandieng Commune',
        '150203'
    ),
    (
        '15.2.3',
        'ឃុំ កញ្ជរ',
        'Kanhchor Commune',
        '150204'
    ),
    (
        '15.2.4',
        'ឃុំ រាំងទិល',
        'Reang Til Commune',
        '150205'
    ),
    (
        '15.2.5',
        'ឃុំ ស្រែស្តុក',
        'Srae Sdok Commune',
        '150206'
    ),
    (
        '15.2.6',
        'ឃុំ ស្វាយលួង',
        'Svay Luong Commune',
        '150207'
    ),
    ('15.2.7', 'ឃុំ ស្យា', 'Sya Commune', '150208'),
    ('15.2.8', 'ឃុំ វាល', 'Veal Commune', '150209'),
    (
        '15.2.9',
        'ឃុំ កោះជុំ',
        'Kaoh Chum Commune',
        '150210'
    ),
    (
        '15.3',
        'ស្រុក ក្រគរ',
        'Krakor District',
        '150300'
    ),
    (
        '15.3.1',
        'ឃុំ អន្លង់ត្នោត',
        'Anlung Tnaot Commune',
        '150301'
    ),
    (
        '15.3.2',
        'ឃុំ អន្សាចំបក់',
        'Ansa Chambak Commune',
        '150302'
    ),
    (
        '15.3.3',
        'ឃុំ បឹងកន្ទួត',
        'Boeng Kantuot Commune',
        '150303'
    ),
    (
        '15.3.4',
        'ឃុំ ឈើតុំ',
        'Chheu Tom Commune',
        '150304'
    ),
    (
        '15.3.5',
        'ឃុំ កំពង់លួង',
        'Kampong Luong Commune',
        '150305'
    ),
    (
        '15.3.6',
        'ឃុំ កំពង់ពោធិ៍',
        'Kampong Pou Commune',
        '150306'
    ),
    (
        '15.3.7',
        'ឃុំ ក្បាលត្រាច',
        'Kbal Trach Commune',
        '150307'
    ),
    (
        '15.3.8',
        'ឃុំ អូរសណ្តាន់',
        'Ou Sandan Commune',
        '150308'
    ),
    (
        '15.3.9',
        'ឃុំ ស្នាអន្សា',
        'Sna Ansa Commune',
        '150309'
    ),
    (
        '15.3.10',
        'ឃុំ ស្វាយស',
        'Svay Sa Commune',
        '150310'
    ),
    (
        '15.3.11',
        'ឃុំ ត្នោតជុំ',
        'Tnaot Chum Commune',
        '150311'
    ),
    (
        '15.4',
        'ស្រុក ភ្នំក្រវាញ',
        'Phnum Kravanh District',
        '150400'
    ),
    (
        '15.4.1',
        'ឃុំ បាក់ចិញ្ចៀន',
        'Bak Chenhchien Commune',
        '150401'
    ),
    ('15.4.2', 'ឃុំ លាច', 'Leach Commune', '150402'),
    (
        '15.4.3',
        'ឃុំ ព្រងិល',
        'Prongil Commune',
        '150404'
    ),
    ('15.4.4', 'ឃុំ រកាត', 'Rokat Commune', '150405'),
    (
        '15.4.5',
        'ឃុំ សន្ទ្រែ',
        'Santreae Commune',
        '150406'
    ),
    (
        '15.4.6',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '150407'
    ),
    (
        '15.5',
        'ក្រុង ពោធិ៍សាត់',
        'Pousat Municipality',
        '150500'
    ),
    (
        '15.5.1',
        'សង្កាត់ ចំរើនផល',
        'Sangkat Chamraeun Phal',
        '150501'
    ),
    (
        '15.5.2',
        'សង្កាត់ លលកស',
        'Sangkat Lolok Sa',
        '150503'
    ),
    (
        '15.5.3',
        'សង្កាត់ ផ្ទះព្រៃ',
        'Sangkat Phteah Prey',
        '150504'
    ),
    (
        '15.5.4',
        'សង្កាត់ ព្រៃញី',
        'Sangkat Prey Nhi',
        '150505'
    ),
    (
        '15.5.5',
        'សង្កាត់ រលាប',
        'Sangkat Roleab',
        '150506'
    ),
    (
        '15.5.6',
        'សង្កាត់ ស្វាយអាត់',
        'Sangkat Svay At',
        '150507'
    ),
    (
        '15.5.7',
        'សង្កាត់ បន្ទាយដី',
        'Sangkat Banteay Dei',
        '150508'
    ),
    (
        '15.6',
        'ស្រុក វាលវែង',
        'Veal Veaeng District',
        '150600'
    ),
    (
        '15.6.1',
        'ឃុំ អូរសោម',
        'Ou Saom Commune',
        '150601'
    ),
    (
        '15.6.2',
        'ឃុំ ក្រពើពីរ',
        'Krapeu Pir Commune',
        '150602'
    ),
    (
        '15.6.3',
        'ឃុំ អន្លង់រាប',
        'Anlung Reab Commune',
        '150603'
    ),
    (
        '15.6.4',
        'ឃុំ ប្រម៉ោយ',
        'Pramaoy Commune',
        '150604'
    ),
    (
        '15.6.5',
        'ឃុំ ថ្មដា',
        'Thma Da Commune',
        '150605'
    ),
    (
        '15.7',
        'ស្រុក តាលោសែនជ័យ',
        'Ta Lou Saen Chey District',
        '150700'
    ),
    ('15.7.1', 'ឃុំ តាលោ', 'Ta Lou Commune', '150701'),
    (
        '15.7.2',
        'ឃុំ ផ្ទះរុង',
        'Phteah Rung Commune',
        '150702'
    ),
    (
        '16',
        'ខេត្ត រតនគិរី',
        'Ratanak Kiri Province',
        '160000'
    ),
    (
        '16.1',
        'ស្រុក អណ្តូងមាស',
        'Andoung Meas District',
        '160100'
    ),
    (
        '16.1.1',
        'ឃុំ ម៉ាលិក',
        'Malik Commune',
        '160101'
    ),
    ('16.1.2', 'ឃុំ ញ៉ាង', 'Nhang Commune', '160103'),
    (
        '16.1.3',
        'ឃុំ តាឡាវ',
        'Ta Lav Commune',
        '160104'
    ),
    (
        '16.2',
        'ក្រុង បានលុង',
        'Ban Lung Municipality',
        '160200'
    ),
    (
        '16.2.1',
        'សង្កាត់ កាចាញ',
        'Sangkat Kachanh',
        '160201'
    ),
    (
        '16.2.2',
        'សង្កាត់ ឡាបានសៀក',
        'Sangkat Labansiek',
        '160202'
    ),
    (
        '16.2.3',
        'សង្កាត់ យក្ខឡោម',
        'Sangkat Yeak Laom',
        '160203'
    ),
    (
        '16.2.4',
        'សង្កាត់ បឹងកន្សែង',
        'Sangkat Boeng Kansaeng',
        '160204'
    ),
    (
        '16.3',
        'ស្រុក បរកែវ',
        'Bar Kaev District',
        '160300'
    ),
    ('16.3.1', 'ឃុំ កក់', 'Kak Commune', '160301'),
    (
        '16.3.2',
        'ឃុំ កិះចុង',
        'Keh Chong Commune',
        '160302'
    ),
    (
        '16.3.3',
        'ឃុំ ឡាមីញ',
        'La Minh Commune',
        '160303'
    ),
    (
        '16.3.4',
        'ឃុំ លុងឃុង',
        'Lung Khung Commune',
        '160304'
    ),
    ('16.3.5', 'ឃុំ ស៊ើង', 'Seung Commune', '160305'),
    (
        '16.3.6',
        'ឃុំ ទីងចាក់',
        'Ting Chak Commune',
        '160306'
    ),
    (
        '16.4',
        'ស្រុក កូនមុំ',
        'Koun Mom District',
        '160400'
    ),
    (
        '16.4.1',
        'ឃុំ សិរីមង្គល',
        'Serei Mangkul Commune',
        '160401'
    ),
    (
        '16.4.2',
        'ឃុំ ស្រែអង្គ្រង',
        'Srae Angkrong Commune',
        '160402'
    ),
    ('16.4.3', 'ឃុំ តាអង', 'Ta Ang Commune', '160403'),
    ('16.4.4', 'ឃុំ តឺន', 'Teun Commune', '160404'),
    (
        '16.4.5',
        'ឃុំ ត្រពាំងច្រេស',
        'Trapeang Chres Commune',
        '160405'
    ),
    (
        '16.4.6',
        'ឃុំ ត្រពាំងក្រហម',
        'Trapeang Kraham Commune',
        '160406'
    ),
    (
        '16.5',
        'ស្រុក លំផាត់',
        'Lumphat District',
        '160500'
    ),
    (
        '16.5.1',
        'ឃុំ ជ័យឧត្តម',
        'Chey Otdam Commune',
        '160501'
    ),
    (
        '16.5.2',
        'ឃុំ កាឡែង',
        'Ka Laeng Commune',
        '160502'
    ),
    (
        '16.5.3',
        'ឃុំ ល្បាំង ១',
        'Lbang Muoy Commune',
        '160503'
    ),
    (
        '16.5.4',
        'ឃុំ ល្បាំង ២',
        'Lbang Pir Commune',
        '160504'
    ),
    (
        '16.5.5',
        'ឃុំ បាតាង',
        'Ba Tang Commune',
        '160505'
    ),
    ('16.5.6', 'ឃុំ សេដា', 'Seda Commune', '160506'),
    (
        '16.6',
        'ស្រុក អូរជុំ',
        'Ou Chum District',
        '160600'
    ),
    (
        '16.6.1',
        'ឃុំ ចាអ៊ុង',
        'Cha Ung Commune',
        '160601'
    ),
    ('16.6.2', 'ឃុំ ប៉ូយ', 'Pouy Commune', '160602'),
    (
        '16.6.3',
        'ឃុំ ឯកភាព',
        'Aekakpheap Commune',
        '160603'
    ),
    ('16.6.4', 'ឃុំ កាឡៃ', 'Kalai Commune', '160604'),
    (
        '16.6.5',
        'ឃុំ អូរជុំ',
        'Ou Chum Commune',
        '160605'
    ),
    (
        '16.6.6',
        'ឃុំ សាមគ្គី',
        'Sammeakki Commune',
        '160606'
    ),
    ('16.6.7', 'ឃុំ ល្អក់', 'L''ak Commune', '160607'),
    (
        '16.7',
        'ស្រុក អូរយ៉ាដាវ',
        'Ou ​​​Ya Dav District',
        '160700'
    ),
    (
        '16.7.1',
        'ឃុំ បរខាំ',
        'Bar Kham Commune',
        '160701'
    ),
    (
        '16.7.2',
        'ឃុំ លំជ័រ',
        'Lum Choar Commune',
        '160702'
    ),
    (
        '16.7.3',
        'ឃុំ ប៉ក់ញ៉ៃ',
        'Pak Nhai Commune',
        '160703'
    ),
    ('16.7.4', 'ឃុំ ប៉ាតេ', 'Pa Te Commune', '160704'),
    ('16.7.5', 'ឃុំ សេសាន', 'Sesan Commune', '160705'),
    (
        '16.7.6',
        'ឃុំ សោមធំ',
        'Saom Thum Commune',
        '160706'
    ),
    (
        '16.7.7',
        'ឃុំ យ៉ាទុង',
        'Ya Tung Commune',
        '160707'
    ),
    (
        '16.8',
        'ស្រុក តាវែង',
        'Ta Veaeng District',
        '160800'
    ),
    (
        '16.8.1',
        'ឃុំ តាវែងលើ',
        'Ta Veaeng Leu Commune',
        '160801'
    ),
    (
        '16.8.2',
        'ឃុំ តាវែងក្រោម',
        'Ta Veaeng Kraom Commune',
        '160802'
    ),
    (
        '16.9',
        'ស្រុក វើនសៃ',
        'Veun Sai District',
        '160900'
    ),
    ('16.9.1', 'ឃុំ ប៉ុង', 'Pong Commune', '160901'),
    (
        '16.9.2',
        'ឃុំ ហាត់ប៉ក់',
        'Hat Pak Commune',
        '160903'
    ),
    (
        '16.9.3',
        'ឃុំ កាចូន',
        'Ka Choun Commune',
        '160904'
    ),
    (
        '16.9.4',
        'ឃុំ កោះប៉ង់',
        'Kaoh Pang Commune',
        '160905'
    ),
    (
        '16.9.5',
        'ឃុំ កោះពាក្យ',
        'Kaoh Peak Commune',
        '160906'
    ),
    (
        '16.9.6',
        'ឃុំ កុកឡាក់',
        'Kok Lak Commune',
        '160907'
    ),
    (
        '16.9.7',
        'ឃុំ ប៉ាកាឡាន់',
        'Pa Kalan Commune',
        '160908'
    ),
    (
        '16.9.8',
        'ឃុំ ភ្នំកុក',
        'Phnum Kok Commune',
        '160909'
    ),
    (
        '16.9.9',
        'ឃុំ វើនសៃ',
        'Veun Sai Commune',
        '160910'
    ),
    (
        '17',
        'ខេត្ត សៀមរាប',
        'Siem Reap Province',
        '170000'
    ),
    (
        '17.1',
        'ស្រុក អង្គរជុំ',
        'Angkor Chum District',
        '170100'
    ),
    (
        '17.1.1',
        'ឃុំ ចារឈូក',
        'Char Chhuk Commune',
        '170101'
    ),
    (
        '17.1.2',
        'ឃុំ ដូនពេង',
        'Doun Paeng Commune',
        '170102'
    ),
    (
        '17.1.3',
        'ឃុំ គោកដូង',
        'Kouk Doung Commune',
        '170103'
    ),
    ('17.1.4', 'ឃុំ គោល', 'Koul Commune', '170104'),
    (
        '17.1.5',
        'ឃុំ នគរភាស',
        'Nokor Pheas Commune',
        '170105'
    ),
    (
        '17.1.6',
        'ឃុំ ស្រែខ្វាវ',
        'Srae Khvav Commune',
        '170106'
    ),
    (
        '17.1.7',
        'ឃុំ តាសោម',
        'Ta Saom Commune',
        '170107'
    ),
    (
        '17.2',
        'ស្រុក អង្គរធំ',
        'Angkor Thum District',
        '170200'
    ),
    (
        '17.2.1',
        'ឃុំ ជប់តាត្រាវ',
        'Chub Ta Trav Commune',
        '170201'
    ),
    (
        '17.2.2',
        'ឃុំ លាងដៃ',
        'Leang Dai Commune',
        '170202'
    ),
    (
        '17.2.3',
        'ឃុំ ពាក់ស្នែង',
        'Peak Snaeng Commune',
        '170203'
    ),
    (
        '17.2.4',
        'ឃុំ ស្វាយចេក',
        'Svay Chek Commune',
        '170204'
    ),
    (
        '17.3',
        'ស្រុក បន្ទាយស្រី',
        'Banteay Srei District',
        '170300'
    ),
    (
        '17.3.1',
        'ឃុំ ខ្នារសណ្តាយ',
        'Khnar Sanday Commune',
        '170301'
    ),
    (
        '17.3.2',
        'ឃុំ ឃុនរាម',
        'Khun Ream Commune',
        '170302'
    ),
    (
        '17.3.3',
        'ឃុំ ព្រះដាក់',
        'Preah Dak Commune',
        '170303'
    ),
    (
        '17.3.4',
        'ឃុំ រំចេក',
        'Rumchek Commune',
        '170304'
    ),
    (
        '17.3.5',
        'ឃុំ ត្បែង',
        'Tbaeng Commune',
        '170306'
    ),
    (
        '17.4',
        'ស្រុក ជីក្រែង',
        'Chi Kraeng District',
        '170400'
    ),
    (
        '17.4.1',
        'ឃុំ អន្លង់សំណរ',
        'Anlung Samnar Commune',
        '170401'
    ),
    (
        '17.4.2',
        'ឃុំ ជីក្រែង',
        'Chi Kraeng Commune',
        '170402'
    ),
    (
        '17.4.3',
        'ឃុំ កំពង់ក្តី',
        'Kampong Kdei Commune',
        '170403'
    ),
    ('17.4.4', 'ឃុំ ខ្វាវ', 'Khvav Commune', '170404'),
    (
        '17.4.5',
        'ឃុំ គោកធ្លកក្រោម',
        'Kouk Thlok Kraom Commune',
        '170405'
    ),
    (
        '17.4.6',
        'ឃុំ គោកធ្លកលើ',
        'Kouk Thlok Leu Commune',
        '170406'
    ),
    (
        '17.4.7',
        'ឃុំ ល្វែងឫស្សី',
        'Lveaeng Ruessei Commune',
        '170407'
    ),
    (
        '17.4.8',
        'ឃុំ ពង្រក្រោម',
        'Pungro Kraom Commune',
        '170408'
    ),
    (
        '17.4.9',
        'ឃុំ ពង្រលើ',
        'Pungro Leu Commune',
        '170409'
    ),
    (
        '17.4.10',
        'ឃុំ ឫស្សីលក',
        'Ruessei Lok Commune',
        '170410'
    ),
    (
        '17.4.11',
        'ឃុំ សង្វើយ',
        'Sangvaeuy Commune',
        '170411'
    ),
    (
        '17.4.12',
        'ឃុំ ស្ពានត្នោត',
        'Spean Tnaot Commune',
        '170412'
    ),
    (
        '17.5',
        'ស្រុក ក្រឡាញ់',
        'Kralanh District',
        '170600'
    ),
    (
        '17.5.1',
        'ឃុំ ចន្លាសដៃ',
        'Chanleas Dai Commune',
        '170601'
    ),
    (
        '17.5.2',
        'ឃុំ កំពង់ថ្កូវ',
        'Kampong Thkouv Commune',
        '170602'
    ),
    (
        '17.5.3',
        'ឃុំ ក្រឡាញ់',
        'Kralanh Commune',
        '170603'
    ),
    (
        '17.5.4',
        'ឃុំ ក្រូចគរ',
        'Krouch Kor Commune',
        '170604'
    ),
    (
        '17.5.5',
        'ឃុំ រោងគោ',
        'Roung Kou Commune',
        '170605'
    ),
    (
        '17.5.6',
        'ឃុំ សំបួរ',
        'Sambuor Commune',
        '170606'
    ),
    (
        '17.5.7',
        'ឃុំ សែនសុខ',
        'Saen Sokh Commune',
        '170607'
    ),
    ('17.5.8', 'ឃុំ ស្នួល', 'Snuol Commune', '170608'),
    (
        '17.5.9',
        'ឃុំ ស្រណាល',
        'Sranal Commune',
        '170609'
    ),
    (
        '17.5.10',
        'ឃុំ តាអាន',
        'Ta An Commune',
        '170610'
    ),
    ('17.6', 'ស្រុក ពួក', 'Puok District', '170700'),
    (
        '17.6.1',
        'ឃុំ សសរស្តម្ភ',
        'Sasar Sdam Commune',
        '170701'
    ),
    (
        '17.6.2',
        'ឃុំ ដូនកែវ',
        'Doun Kaev Commune',
        '170702'
    ),
    (
        '17.6.3',
        'ឃុំ ក្តីរុន',
        'Kdei Run Commune',
        '170703'
    ),
    (
        '17.6.4',
        'ឃុំ កែវពណ៌',
        'Kaev Poar Commune',
        '170704'
    ),
    ('17.6.5', 'ឃុំ ខ្នាត', 'Khnat Commune', '170705'),
    ('17.6.6', 'ឃុំ ល្វា', 'Lvea Commune', '170707'),
    (
        '17.6.7',
        'ឃុំ មុខប៉ែន',
        'Mukh Paen Commune',
        '170708'
    ),
    (
        '17.6.8',
        'ឃុំ ពោធិ៍ទ្រាយ',
        'Pou Treay Commune',
        '170709'
    ),
    ('17.6.9', 'ឃុំ ពួក', 'Puok Commune', '170710'),
    (
        '17.6.10',
        'ឃុំ ព្រៃជ្រូក',
        'Prey Chruk Commune',
        '170711'
    ),
    ('17.6.11', 'ឃុំ រើល', 'Reul Commune', '170712'),
    (
        '17.6.12',
        'ឃុំ សំរោងយា',
        'Samraong Yea Commune',
        '170713'
    ),
    (
        '17.6.13',
        'ឃុំ ត្រីញ័រ',
        'Trei Nhoar Commune',
        '170715'
    ),
    ('17.6.14', 'ឃុំ យាង', 'Yeang Commune', '170716'),
    (
        '17.7',
        'ស្រុក ប្រាសាទបាគង',
        'Prasat  Bakong District',
        '170900'
    ),
    ('17.7.1', 'ឃុំ បាគង', 'Bakong Commune', '170902'),
    (
        '17.7.2',
        'ឃុំ កំពង់ភ្លុក',
        'Kampong Phluk Commune',
        '170904'
    ),
    (
        '17.7.3',
        'ឃុំ កន្ទ្រាំង',
        'Kantreang Commune',
        '170905'
    ),
    (
        '17.7.4',
        'ឃុំ កណ្តែក',
        'Kandaek Commune',
        '170906'
    ),
    (
        '17.7.5',
        'ឃុំ មានជ័យ',
        'Mean Chey Commune',
        '170907'
    ),
    ('17.7.6', 'ឃុំ រលួស', 'Roluos Commune', '170908'),
    (
        '17.7.7',
        'ឃុំ ត្រពាំងធំ',
        'Trapeang Thum Commune',
        '170909'
    ),
    ('17.7.8', 'ឃុំ អំពិល', 'Ampil Commune', '170910'),
    (
        '17.8',
        'ក្រុង​ សៀមរាប',
        'Siem Reap Municipality',
        '171000'
    ),
    (
        '17.8.1',
        'សង្កាត់ ស្លក្រាម',
        'Sangkat Sla Kram',
        '171001'
    ),
    (
        '17.8.2',
        'សង្កាត់ ស្វាយដង្គំ',
        'Sangkat Svay Dankum',
        '171002'
    ),
    (
        '17.8.3',
        'សង្កាត់ គោកចក',
        'Sangkat Kouk Chak',
        '171003'
    ),
    (
        '17.8.4',
        'សង្កាត់ សាលាកំរើក',
        'Sangkat Sala Kamraeuk',
        '171004'
    ),
    (
        '17.8.5',
        'សង្កាត់ នគរធំ',
        'Sangkat Nokor Thum',
        '171005'
    ),
    (
        '17.8.6',
        'សង្កាត់ ជ្រាវ',
        'Sangkat Chreav',
        '171006'
    ),
    (
        '17.8.7',
        'សង្កាត់ ចុងឃ្នៀស',
        'Sangkat Chong Khnies',
        '171007'
    ),
    (
        '17.8.8',
        'សង្កាត់ សំបួរ',
        'Sngkat Sambuor',
        '171008'
    ),
    (
        '17.8.9',
        'សង្កាត់ សៀមរាប',
        'Sangkat Siem Reap',
        '171009'
    ),
    (
        '17.8.10',
        'សង្កាត់ ស្រង៉ែ',
        'Sangkat Srangae',
        '171010'
    ),
    (
        '17.8.11',
        'សង្កាត់ ក្របីរៀល',
        'Sangkat Krabei Riel',
        '171012'
    ),
    (
        '17.8.12',
        'សង្កាត់ ទឹកវិល',
        'Sangkat Tuek Vil',
        '171013'
    ),
    (
        '17.9',
        'ស្រុក សូទ្រនិគម',
        'Sout Nikum District',
        '171100'
    ),
    (
        '17.9.1',
        'ឃុំ ចាន់ស',
        'Chan Sa Commune',
        '171101'
    ),
    (
        '17.9.2',
        'ឃុំ ដំដែក',
        'Dam Daek Commune',
        '171102'
    ),
    (
        '17.9.3',
        'ឃុំ ដានរុន',
        'Dan Run Commune',
        '171103'
    ),
    (
        '17.9.4',
        'ឃុំ កំពង់ឃ្លាំង',
        'Kampong Khleang Commune',
        '171104'
    ),
    (
        '17.9.5',
        'ឃុំ កៀនសង្កែ',
        'Kien Sangkae Commune',
        '171105'
    ),
    (
        '17.9.6',
        'ឃុំ ខ្ចាស់',
        'Khchas Commune',
        '171106'
    ),
    (
        '17.9.7',
        'ឃុំ ខ្នារពោធិ៍',
        'Khnar Pou Commune',
        '171107'
    ),
    ('17.9.8', 'ឃុំ ពពេល', 'Popel Commune', '171108'),
    (
        '17.9.9',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '171109'
    ),
    (
        '17.9.10',
        'ឃុំ តាយ៉ែក',
        'Ta Yaek Commune',
        '171110'
    ),
    (
        '17.1',
        'ស្រុក ស្រីស្នំ',
        'Srei Snam District',
        '171200'
    ),
    (
        '17.10.1',
        'ឃុំ ជ្រោយនាងងួន',
        'Chrouy Neang Nguon Commune',
        '171201'
    ),
    (
        '17.10.2',
        'ឃុំ ក្លាំងហាយ',
        'Klang Hay Commune',
        '171202'
    ),
    (
        '17.10.3',
        'ឃុំ ត្រាំសសរ',
        'Tram Sasar Commune',
        '171203'
    ),
    ('17.10.4', 'ឃុំ មោង', 'Moung Commune', '171204'),
    (
        '17.10.5',
        'ឃុំ ប្រីយ៍',
        'Prei Commune',
        '171205'
    ),
    (
        '17.10.6',
        'ឃុំ ស្លែងស្ពាន',
        'Slaeng Spean Commune',
        '171206'
    ),
    (
        '17.11',
        'ស្រុក ស្វាយលើ',
        'Svay Leu District',
        '171300'
    ),
    (
        '17.11.1',
        'ឃុំ បឹងមាលា',
        'Boeng Mealea Commune',
        '171301'
    ),
    (
        '17.11.2',
        'ឃុំ កន្ទួត',
        'Kantuot Commune',
        '171302'
    ),
    (
        '17.11.3',
        'ឃុំ ខ្នងភ្នំ',
        'Khnang Phnum Commune',
        '171303'
    ),
    (
        '17.11.4',
        'ឃុំ ស្វាយលើ',
        'Svay Leu Commune',
        '171304'
    ),
    (
        '17.11.5',
        'ឃុំ តាសៀម',
        'Ta Siem Commune',
        '171305'
    ),
    (
        '17.12',
        'ស្រុក វ៉ារិន',
        'Varin District',
        '171400'
    ),
    (
        '17.12.1',
        'ឃុំ ប្រាសាទ',
        'Prasat Commune',
        '171401'
    ),
    (
        '17.12.2',
        'ឃុំ ល្វាក្រាំង',
        'Lvea Krang Commune',
        '171402'
    ),
    (
        '17.12.3',
        'ឃុំ ស្រែណូយ',
        'Srae Nouy Commune',
        '171403'
    ),
    (
        '17.12.4',
        'ឃុំ ស្វាយ ស',
        'Svay Sa Commune',
        '171404'
    ),
    (
        '17.12.5',
        'ឃុំ វ៉ារិន',
        'Varin Commune',
        '171405'
    ),
    (
        '17.13',
        'ក្រុង ​រុនតាឯកតេជោសែន',
        'Run Ta Aek Techou Saen Municipality',
        '171500'
    ),
    (
        '17.13.1',
        'សង្កាត់ រុនតាឯក',
        'Sangkat Run Ta Aek',
        '171501'
    ),
    (
        '17.13.2',
        'សង្កាត់ បល្ល័ង្ក',
        'Sangkat Ballang',
        '171502'
    ),
    (
        '18',
        'ខេត្ត​ ព្រះសីហនុ',
        'Sihanoukville Province',
        '180000'
    ),
    (
        '18.1',
        'ក្រុង ព្រះសីហនុ',
        'Preah Sihanouk Municipality',
        '180100'
    ),
    (
        '18.1.1',
        'សង្កាត់ លេខ ១',
        'Sangkat Lekh Muoy',
        '180101'
    ),
    (
        '18.1.2',
        'សង្កាត់ លេខ ២',
        'Sangkat Lekh Pir',
        '180102'
    ),
    (
        '18.1.3',
        'សង្កាត់ លេខ ៣',
        'Sangkat Lekh Bei',
        '180103'
    ),
    (
        '18.1.4',
        'សង្កាត់ លេខ ៤',
        'Sangkat Lekh Buon',
        '180104'
    ),
    (
        '18.2',
        'ស្រុក ព្រៃនប់',
        'Prey Nub District',
        '180200'
    ),
    (
        '18.2.1',
        'ឃុំ អណ្តូងថ្ម',
        'Andoung Thma Commune',
        '180201'
    ),
    (
        '18.2.2',
        'ឃុំ ជើងគោ',
        'Cheung Kou Commune',
        '180204'
    ),
    (
        '18.2.3',
        'ឃុំ ព្រៃនប់',
        'Prey Nub Commune',
        '180207'
    ),
    (
        '18.2.4',
        'ឃុំ សាមគ្គី',
        'Sammeakki Commune',
        '180209'
    ),
    (
        '18.2.5',
        'ឃុំ សំរុង',
        'Samrong Commune',
        '180210'
    ),
    (
        '18.2.6',
        'ឃុំ ទឹកល្អក់',
        'Tuek L''ak Commune',
        '180211'
    ),
    (
        '18.2.7',
        'ឃុំ ទឹកថ្លា',
        'Tuek Thla Commune',
        '180212'
    ),
    (
        '18.2.8',
        'ឃុំ ទួលទទឹង',
        'Tuol Totueng Commune',
        '180213'
    ),
    (
        '18.2.9',
        'ឃុំ វាលរេញ',
        'Veal Renh Commune',
        '180214'
    ),
    (
        '18.2.10',
        'ឃុំ តានៃ',
        'Ta Ney Commune',
        '180215'
    ),
    (
        '18.3',
        'ស្រុក ស្ទឹងហាវ',
        'Stueng Hav District',
        '180300'
    ),
    (
        '18.3.1',
        'ឃុំ កំពេញ',
        'Kampenh Commune',
        '180301'
    ),
    (
        '18.3.2',
        'ឃុំ អូរត្រេះ',
        'Ou Treh Commune',
        '180302'
    ),
    (
        '18.3.3',
        'ឃុំ ទំនប់រលក',
        'Tumnub Rolok Commune',
        '180303'
    ),
    (
        '18.3.4',
        'ឃុំ កែវផុស',
        'Kaev Phos Commune',
        '180304'
    ),
    (
        '18.4',
        'ស្រុក កំពង់សីលា',
        'Kampong Seila District',
        '180400'
    ),
    (
        '18.4.1',
        'ឃុំ ចំការហ្លួង',
        'Chamkar Luong Commune',
        '180401'
    ),
    (
        '18.4.2',
        'ឃុំ កំពង់សីលា',
        'Kampong Seila Commune',
        '180402'
    ),
    (
        '18.4.3',
        'ឃុំ អូរបាក់រទេះ',
        'Ou Bak Roteh Commune',
        '180403'
    ),
    (
        '18.4.4',
        'ឃុំ ស្ទឹងឆាយ',
        'Stueng Chhay Commune',
        '180404'
    ),
    (
        '18.5',
        'ក្រុង កោះរ៉ុង',
        'Kaoh Rong Municipality',
        '180500'
    ),
    (
        '18.5.1',
        'សង្កាត់ កោះរ៉ុង',
        'Sangkat Kaoh Rong',
        '180501'
    ),
    (
        '18.5.2',
        'សង្កាត់ កោះរ៉ុងសន្លឹម',
        'Sangkat Kaoh Rong Sanloem',
        '180502'
    ),
    (
        '18.6',
        'ក្រុង កំពង់សោម',
        'Kampong Saom Municipality',
        '180600'
    ),
    (
        '18.6.1',
        'សង្កាត់ បឹងតាព្រហ្ម',
        'Sangkat Boeng Ta Prum',
        '180601'
    ),
    (
        '18.6.2',
        'សង្កាត់ បិតត្រាំង',
        'Sangkat Bet Trang',
        '180602'
    ),
    (
        '18.6.3',
        'សង្កាត់ អូរជ្រៅ',
        'Sangkat Ou Chrov',
        '180603'
    ),
    (
        '18.6.4',
        'សង្កាត់ អូរឧកញ៉ាហេង',
        'Sangkat Ou Oknha Heng',
        '180604'
    ),
    (
        '18.6.5',
        'សង្កាត់ រាម',
        'Sangkat Ream',
        '180605'
    ),
    (
        '19',
        '​ខេត្ត ស្ទឹងត្រែង',
        'Stung Treng Province',
        '190000'
    ),
    (
        '19.1',
        '​ស្រុក សេសាន',
        'Sesan District',
        '190100'
    ),
    (
        '19.1.1',
        'ឃុំ កំភុន',
        'Kamphun Commune',
        '190101'
    ),
    (
        '19.1.2',
        'ឃុំ ក្បាលរមាស',
        'Kbal Romeas Commune',
        '190102'
    ),
    ('19.1.3', 'ឃុំ ភ្លុក', 'Phluk Commune', '190103'),
    (
        '19.1.4',
        'ឃុំ សាមឃួយ',
        'Samkhuoy Commune',
        '190104'
    ),
    ('19.1.5', 'ឃុំ ស្តៅ', 'Sdau Commune', '190105'),
    (
        '19.1.6',
        'ឃុំ ស្រែគរ',
        'Srae Kor Commune',
        '190106'
    ),
    (
        '19.1.7',
        'ឃុំ តាឡាត',
        'Ta Lat Commune',
        '190107'
    ),
    (
        '19.2',
        '​ស្រុក សៀមបូក',
        'Siem Bouk District',
        '190200'
    ),
    (
        '19.2.1',
        'ឃុំ កោះព្រះ',
        'Kaoh Preah Commune',
        '190201'
    ),
    (
        '19.2.2',
        'ឃុំ កោះសំពាយ',
        'Kaoh Sampeay Commune',
        '190202'
    ),
    (
        '19.2.3',
        'ឃុំ កោះស្រឡាយ',
        'Kaoh Sralay Commune',
        '190203'
    ),
    (
        '19.2.4',
        'ឃុំ អូរម្រះ',
        'Ou Mreah Commune',
        '190204'
    ),
    (
        '19.2.5',
        'ឃុំ អូរឫស្សីកណ្តាល',
        'Ou Ruessei Kandal Commune',
        '190205'
    ),
    (
        '19.2.6',
        'ឃុំ សៀមបូក',
        'Siem Bouk Commune',
        '190206'
    ),
    (
        '19.2.7',
        'ឃុំ ស្រែក្រសាំង',
        'Srae Krasang Commune',
        '190207'
    ),
    (
        '19.3',
        'ស្រុក សៀមប៉ាង',
        'Siem Pang District',
        '190300'
    ),
    (
        '19.3.1',
        'ឃុំ ព្រែកមាស',
        'Preaek Meas Commune',
        '190301'
    ),
    (
        '19.3.2',
        'ឃុំ សេកុង',
        'Sekong Commune',
        '190302'
    ),
    (
        '19.3.3',
        'ឃុំ សន្តិភាព',
        'Santepheap Commune',
        '190303'
    ),
    (
        '19.3.4',
        'ឃុំ ស្រែសំបូរ',
        'Srae Sambour Commune',
        '190304'
    ),
    (
        '19.3.5',
        'ឃុំ ថ្មកែវ',
        'Thma Kaev Commune',
        '190305'
    ),
    (
        '19.4',
        'ក្រុង ស្ទឹងត្រែង',
        'Stueng Traeng Municipality',
        '190400'
    ),
    (
        '19.4.1',
        'សង្កាត់ ស្ទឹងត្រែង',
        'Sangkat Stueng Traeng',
        '190401'
    ),
    (
        '19.4.2',
        'សង្កាត់ ស្រះឫស្សី',
        'Sangkat Srah Ruessei',
        '190402'
    ),
    (
        '19.4.3',
        'សង្កាត់ ព្រះបាទ',
        'Sangkat Preah Bat',
        '190403'
    ),
    (
        '19.4.4',
        'សង្កាត់ សាមគ្គី',
        'Sangkat Sameakki',
        '190404'
    ),
    (
        '19.5',
        '​ស្រុក ថាឡាបរិវ៉ាត់',
        'Thala Barivat District',
        '190500'
    ),
    (
        '19.5.1',
        'ឃុំ អន្លង់ភេ',
        'Anlung Phe Commune',
        '190501'
    ),
    (
        '19.5.2',
        'ឃុំ ចំការលើ',
        'Chamkar Leu Commune',
        '190502'
    ),
    (
        '19.5.3',
        'ឃុំ កាំងចាម',
        'Kang Cham Commune',
        '190503'
    ),
    (
        '19.5.4',
        'ឃុំ អន្លង់ជ្រៃ',
        'Anlung Chrey Commune',
        '190505'
    ),
    (
        '19.5.5',
        'ឃុំ អូររ៉ៃ',
        'Ou Rai Commune',
        '190506'
    ),
    (
        '19.5.6',
        'ឃុំ សំអាង',
        'Sam Ang Commune',
        '190509'
    ),
    (
        '19.5.7',
        'ឃុំ ស្រែឫស្សី',
        'Srae Ruessei Commune',
        '190510'
    ),
    (
        '19.5.8',
        'ឃុំ ថាឡាបរិវ៉ាត់',
        'Thala Barivat Commune',
        '190511'
    ),
    (
        '19.6',
        'ស្រុក បូរីអូរស្វាយសែនជ័យ',
        'Borei Ou svay Saen Chey District',
        '190600'
    ),
    (
        '19.6.1',
        'ឃុំ អូរស្វាយ',
        'Ou Svay Commune',
        '190601'
    ),
    (
        '19.6.2',
        'ឃុំ កោះស្នែង',
        'Kaoh Snaeng Commune',
        '190602'
    ),
    (
        '19.6.3',
        'ឃុំ ព្រះរំកិល',
        'Preah Rumkel Commune',
        '190603'
    ),
    (
        '20',
        'ខេត្ត ស្វាយរៀង',
        'Svay Rieng Province',
        '200000'
    ),
    (
        '20.1',
        'ស្រុក ចន្ទ្រា',
        'Chantrea District',
        '200100'
    ),
    (
        '20.1.1',
        'ឃុំ ចន្ទ្រា',
        'Chantrea Commune',
        '200103'
    ),
    ('20.1.2', 'ឃុំ ច្រេស', 'Chres Commune', '200104'),
    (
        '20.1.3',
        'ឃុំ មេ សរថ្ងក',
        'Me Sar Thngak Commune',
        '200105'
    ),
    (
        '20.1.4',
        'ឃុំ ព្រៃគគីរ',
        'Prey Kokir Commune',
        '200108'
    ),
    (
        '20.1.5',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '200109'
    ),
    (
        '20.1.6',
        'ឃុំ ទួលស្តី',
        'Tuol Sdei Commune',
        '200110'
    ),
    (
        '20.2',
        'ស្រុក កំពង់រោទ៍',
        'Kampong Rou District',
        '200200'
    ),
    (
        '20.2.1',
        'ឃុំ បន្ទាយក្រាំង',
        'Banteay Krang Commune',
        '200201'
    ),
    ('20.2.2', 'ឃុំ ញរ', 'Nhor Commune', '200202'),
    (
        '20.2.3',
        'ឃុំ ខ្សែត្រ',
        'Khsaet Commune',
        '200203'
    ),
    (
        '20.2.4',
        'ឃុំ ព្រះពន្លា',
        'Preah Punlea Commune',
        '200204'
    ),
    (
        '20.2.5',
        'ឃុំ ព្រៃធំ',
        'Prey Thum Commune',
        '200205'
    ),
    (
        '20.2.6',
        'ឃុំ រាជមន្ទីរ',
        'Reach Munti Commune',
        '200206'
    ),
    ('20.2.7', 'ឃុំ សំឡី', 'Samlei Commune', '200207'),
    (
        '20.2.8',
        'ឃុំ សំយ៉ោង',
        'Samyaong Commune',
        '200208'
    ),
    (
        '20.2.9',
        'ឃុំ ស្វាយតាយាន',
        'Svay Ta Yean Commune',
        '200209'
    ),
    ('20.2.10', 'ឃុំ ថ្មី', 'Thmei Commune', '200211'),
    (
        '20.2.11',
        'ឃុំ ត្នោត',
        'Tnaot Commune',
        '200212'
    ),
    (
        '20.3',
        '​ស្រុក រំដួល',
        'Rumduol District',
        '200300'
    ),
    (
        '20.3.1',
        'ឃុំ បុសមន',
        'Bos Mon Commune',
        '200301'
    ),
    ('20.3.2', 'ឃុំ ធ្មា', 'Thmea Commune', '200302'),
    (
        '20.3.3',
        'ឃុំ កំពង់ចក',
        'Kampong Chak Commune',
        '200303'
    ),
    (
        '20.3.4',
        'ឃុំ ជ្រុងពពេល',
        'Chrung Popel Commune',
        '200304'
    ),
    (
        '20.3.5',
        'ឃុំ កំពង់អំពិល',
        'Kampong Ampil Commune',
        '200305'
    ),
    (
        '20.3.6',
        'ឃុំ ម៉ឺនជ័យ',
        'Meun Chey Commune',
        '200306'
    ),
    (
        '20.3.7',
        'ឃុំ ពងទឹក',
        'Pong Tuek Commune',
        '200307'
    ),
    (
        '20.3.8',
        'ឃុំ សង្កែ',
        'Sangkae Commune',
        '200308'
    ),
    (
        '20.3.9',
        'ឃុំ ស្វាយចេក',
        'Svay Chek Commune',
        '200309'
    ),
    (
        '20.3.10',
        'ឃុំ ថ្នាធ្នង់',
        'Thna Thnung Commune',
        '200310'
    ),
    (
        '20.4',
        'ស្រុក រមាសហែក',
        'Romeas Haek District',
        '200400'
    ),
    ('20.4.1', 'ឃុំ អំពិល', 'Ampil Commune', '200401'),
    (
        '20.4.2',
        'ឃុំ អណ្តូងពោធិ៍',
        'Andoung Pou Commune',
        '200402'
    ),
    (
        '20.4.3',
        'ឃុំ អណ្តូងត្របែក',
        'Andoung Trabaek Commune',
        '200403'
    ),
    (
        '20.4.4',
        'ឃុំ អង្គប្រស្រែ',
        'Ang Prasrae Commune',
        '200404'
    ),
    (
        '20.4.5',
        'ឃុំ ចន្ត្រី',
        'Chantrei Commune',
        '200405'
    ),
    (
        '20.4.6',
        'ឃុំ ជ្រៃធំ',
        'Chrey Thum Commune',
        '200406'
    ),
    ('20.4.7', 'ឃុំ ដូង', 'Doung Commune', '200407'),
    (
        '20.4.8',
        'ឃុំ កំពង់ត្រាច',
        'Kampong Trach Commune',
        '200408'
    ),
    ('20.4.9', 'ឃុំ គគីរ', 'Kokir Commune', '200409'),
    (
        '20.4.10',
        'ឃុំ ក្រសាំង',
        'Krasang Commune',
        '200410'
    ),
    (
        '20.4.11',
        'ឃុំ មុខដា',
        'Mukh Da Commune',
        '200411'
    ),
    (
        '20.4.12',
        'ឃុំ ម្រាម',
        'Mream Commune',
        '200412'
    ),
    (
        '20.4.13',
        'ឃុំ សំបួរ',
        'Sambuor Commune',
        '200413'
    ),
    (
        '20.4.14',
        'ឃុំ សម្បត្តិមានជ័យ',
        'Sambat Mean Chey Commune',
        '200414'
    ),
    (
        '20.4.15',
        'ឃុំ ត្រពាំងស្តៅ',
        'Trapeang Sdau Commune',
        '200415'
    ),
    ('20.4.16', 'ឃុំ ត្រស់', 'Tras Commune', '200416'),
    (
        '20.5',
        'ស្រុក ស្វាយជ្រំ',
        'Svay Chrum District',
        '200500'
    ),
    (
        '20.5.1',
        'ឃុំ អង្គតាសូ',
        'Ang Ta Sou Commune',
        '200501'
    ),
    (
        '20.5.2',
        'ឃុំ បាសាក់',
        'Basak Commune',
        '200502'
    ),
    (
        '20.5.3',
        'ឃុំ ចំបក់',
        'Chambak Commune',
        '200503'
    ),
    (
        '20.5.4',
        'ឃុំ កំពង់ចំឡង',
        'Kampong Chamlang Commune',
        '200504'
    ),
    (
        '20.5.5',
        'ឃុំ តាសួស',
        'Ta Suos Commune',
        '200505'
    ),
    (
        '20.5.6',
        'ឃុំ ឈើទាល',
        'Chheu Teal Commune',
        '200507'
    ),
    (
        '20.5.7',
        'ឃុំ ដូនស',
        'Doun Sa Commune',
        '200508'
    ),
    (
        '20.5.8',
        'ឃុំ គោកព្រីង',
        'Kouk Pring Commune',
        '200509'
    ),
    (
        '20.5.9',
        'ឃុំ ក្រោលគោ',
        'Kraol Kou Commune',
        '200510'
    ),
    (
        '20.5.10',
        'ឃុំ គ្រួស',
        'Kruos Commune',
        '200511'
    ),
    (
        '20.5.11',
        'ឃុំ ពោធិរាជ',
        'Pou Reach Commune',
        '200512'
    ),
    (
        '20.5.12',
        'ឃុំ ស្វាយអង្គ',
        'Svay Ang Commune',
        '200513'
    ),
    (
        '20.5.13',
        'ឃុំ ស្វាយជ្រំ',
        'Svay Chrum Commune',
        '200514'
    ),
    (
        '20.5.14',
        'ឃុំ ស្វាយធំ',
        'Svay Thum Commune',
        '200515'
    ),
    (
        '20.5.15',
        'ឃុំ ស្វាយយា',
        'Svay Yea Commune',
        '200516'
    ),
    (
        '20.5.16',
        'ឃុំ​ ធ្លក',
        'Thlok Commune',
        '200517'
    ),
    (
        '20.6',
        'ក្រុង ស្វាយរៀង',
        'Svay Rieng Municipality',
        '200600'
    ),
    (
        '20.6.1',
        'សង្កាត់ ស្វាយរៀង',
        'Sangkat Svay Rieng',
        '200601'
    ),
    (
        '20.6.2',
        'សង្កាត់ ព្រៃឆ្លាក់',
        'Sangkat Prey Chhlak',
        '200602'
    ),
    (
        '20.6.3',
        'សង្កាត់ គយត្របែក',
        'Sangkat Koy Trabaek',
        '200603'
    ),
    (
        '20.6.4',
        'សង្កាត់ ពោធិ៍តាហោ',
        'Sangkat Pou Ta Hao',
        '200604'
    ),
    (
        '20.6.5',
        'សង្កាត់ ចេក',
        'Sangkat Chek',
        '200605'
    ),
    (
        '20.6.6',
        'សង្កាត់ ស្វាយតឿ',
        'Sangkat Svay Toea',
        '200606'
    ),
    (
        '20.6.7',
        'សង្កាត់ សង្ឃ័រ',
        'Sangkat Sangkhoar',
        '200607'
    ),
    (
        '20.7',
        'ស្រុក ស្វាយទាប',
        'Svay Teab District',
        '200700'
    ),
    (
        '20.7.1',
        'ឃុំ គគីសោម',
        'Kokir Saom Commune',
        '200702'
    ),
    (
        '20.7.2',
        'ឃុំ កណ្តៀងរាយ',
        'Kandieng Reay Commune',
        '200703'
    ),
    (
        '20.7.3',
        'ឃុំ មនោរម្យ',
        'Meaknourum Commune',
        '200704'
    ),
    (
        '20.7.4',
        'ឃុំ ពពែត',
        'Popeaet Commune',
        '200705'
    ),
    (
        '20.7.5',
        'ឃុំ ព្រៃតាអី',
        'Prey Ta Ei Commune',
        '200706'
    ),
    (
        '20.7.6',
        'ឃុំ ប្រសូត្រ',
        'Prasout Commune',
        '200707'
    ),
    (
        '20.7.7',
        'ឃុំ រមាំងថ្កោល',
        'Romeang Thkaol Commune',
        '200708'
    ),
    (
        '20.7.8',
        'ឃុំ សំបួរ',
        'Sambuor Commune',
        '200709'
    ),
    (
        '20.7.9',
        'ឃុំ ស្វាយរំពារ',
        'Svay Rumpear Commune',
        '200711'
    ),
    (
        '20.8',
        'ក្រុង បាវិត',
        'Bavet Municipality',
        '200800'
    ),
    (
        '20.8.1',
        'សង្កាត់ បាទី',
        'Sangkat Bati',
        '200801'
    ),
    (
        '20.8.2',
        'សង្កាត់ បាវិត',
        'Sangkat Bavet',
        '200802'
    ),
    (
        '20.8.3',
        'សង្កាត់ ច្រកម្ទេស',
        'Sangkat Chrak Mtes',
        '200803'
    ),
    (
        '20.8.4',
        'សង្កាត់ ប្រាសាទ',
        'Sangkat Prasat',
        '200804'
    ),
    (
        '20.8.5',
        'សង្កាត់ ព្រៃអង្គុញ',
        'Sangkat Prey Angkunh',
        '200805'
    ),
    ('21', 'ខេត្ត តាកែវ', 'Takeo Province', '210000'),
    (
        '21.1',
        'ស្រុក អង្គរបូរី',
        'Angkor Borei District',
        '210100'
    ),
    (
        '21.1.1',
        'ឃុំ អង្គរបូរី',
        'Angkor Borei Commune',
        '210101'
    ),
    (
        '21.1.2',
        'ឃុំ បាស្រែ',
        'Ba Srae Commune',
        '210102'
    ),
    (
        '21.1.3',
        'ឃុំ គោកធ្លក',
        'Kouk Thlok Commune',
        '210103'
    ),
    (
        '21.1.4',
        'ឃុំ ពន្លៃ',
        'Punley Commune',
        '210104'
    ),
    (
        '21.1.5',
        'ឃុំ ព្រែកផ្ទោល',
        'Preaek Phtoul Commune',
        '210105'
    ),
    (
        '21.1.6',
        'ឃុំ ព្រៃផ្គាំ',
        'Prey Phkoam Commune',
        '210106'
    ),
    ('21.2', 'ស្រុក បាទី', 'Bati District', '210200'),
    (
        '21.2.1',
        'ឃុំ ចំបក់',
        'Chambak Commune',
        '210201'
    ),
    (
        '21.2.2',
        'ឃុំ ចំប៉ី',
        'Champei Commune',
        '210202'
    ),
    ('21.2.3', 'ឃុំ ដូង', 'Doung Commune', '210203'),
    (
        '21.2.4',
        'ឃុំ កណ្តឹង',
        'Kandoeng Commune',
        '210204'
    ),
    (
        '21.2.5',
        'ឃុំ កុមាររាជា',
        'Komar Reachea Commune',
        '210205'
    ),
    (
        '21.2.6',
        'ឃុំ ក្រាំងលាវ',
        'Krang Leav Commune',
        '210206'
    ),
    (
        '21.2.7',
        'ឃុំ ក្រាំងធ្នង់',
        'Krang Thnung Commune',
        '210207'
    ),
    (
        '21.2.8',
        'ឃុំ លំពង់',
        'Lumpung Commune',
        '210208'
    ),
    (
        '21.2.9',
        'ឃុំ ពារាម',
        'Pea Ream Commune',
        '210209'
    ),
    (
        '21.2.10',
        'ឃុំ ពត់សរ',
        'Put Sar Commune',
        '210210'
    ),
    (
        '21.2.11',
        'ឃុំ សូរភី',
        'Souphi Commune',
        '210211'
    ),
    (
        '21.2.12',
        'ឃុំ តាំងដូង',
        'Tang Doung Commune',
        '210212'
    ),
    (
        '21.2.13',
        'ឃុំ ត្នោត',
        'Tnaot Commune',
        '210213'
    ),
    (
        '21.2.14',
        'ឃុំ ត្រពាំងក្រសាំង',
        'Trapeang Krasang Commune',
        '210214'
    ),
    (
        '21.2.15',
        'ឃុំ ត្រពាំងសាប',
        'Trapeang Sab Commune',
        '210215'
    ),
    (
        '21.3',
        'ស្រុក បូរីជលសា​រ',
        'Bourei chulsar District',
        '210300'
    ),
    (
        '21.3.1',
        'ឃុំ បូរីជលសារ',
        'Borei Chulsar Commune',
        '210301'
    ),
    (
        '21.3.2',
        'ឃុំ ជ័យជោគ',
        'Chey Chouk Commune',
        '210302'
    ),
    (
        '21.3.3',
        'ឃុំ ដូងខ្ពស់',
        'Doung Khpuos Commune',
        '210303'
    ),
    (
        '21.3.4',
        'ឃុំ កំពង់ក្រសាំង',
        'Kampong Krasang Commune',
        '210304'
    ),
    (
        '21.3.5',
        'ឃុំ គោកពោធិ៍',
        'Kouk Pou Commune',
        '210305'
    ),
    (
        '21.4',
        'ស្រុក គីរីវង់',
        'Kiri Vung District',
        '210400'
    ),
    (
        '21.4.1',
        'ឃុំ អង្គប្រាសាទ',
        'Ang Prasat Commune',
        '210401'
    ),
    (
        '21.4.2',
        'ឃុំ ព្រះបាទជាន់ជុំ',
        'Preah Bat Choan Chum Commune',
        '210402'
    ),
    (
        '21.4.3',
        'ឃុំ កំណប់',
        'Kamnab Commune',
        '210403'
    ),
    (
        '21.4.4',
        'ឃុំ កំពែង',
        'Kampeaeng Commune',
        '210404'
    ),
    (
        '21.4.5',
        'ឃុំ គីរីចុងកោះ',
        'Kiri Chong Kaoh Commune',
        '210405'
    ),
    (
        '21.4.6',
        'ឃុំ គោកព្រេច',
        'Kouk Prech Commune',
        '210406'
    ),
    (
        '21.4.7',
        'ឃុំ ភ្នំដិន',
        'Phnum Den Commune',
        '210407'
    ),
    (
        '21.4.8',
        'ឃុំ ព្រៃអំពក',
        'Prey Ampok Commune',
        '210408'
    ),
    (
        '21.4.9',
        'ឃុំ ព្រៃរំដេង',
        'Prey Rumdeng Commune',
        '210409'
    ),
    (
        '21.4.10',
        'ឃុំ រាមអណ្តើក',
        'Ream Andaeuk Commune',
        '210410'
    ),
    ('21.4.11', 'ឃុំ សោម', 'Saom Commune', '210411'),
    (
        '21.4.12',
        'ឃុំ តាអូរ',
        'Ta Ou Commune',
        '210412'
    ),
    (
        '21.5',
        'ស្រុក កោះអណ្តែត',
        'Kaoh Andaet District',
        '210500'
    ),
    (
        '21.5.1',
        'ឃុំ ក្រពុំឈូក',
        'Krapum Chhuk Commune',
        '210501'
    ),
    (
        '21.5.2',
        'ឃុំ ពេជសារ',
        'Pech Sar Commune',
        '210502'
    ),
    (
        '21.5.3',
        'ឃុំ ព្រៃខ្លា',
        'Prey Khla Commune',
        '210503'
    ),
    (
        '21.5.4',
        'ឃុំ ព្រៃយុថ្កា',
        'Prey Yuthka Commune',
        '210504'
    ),
    ('21.5.5', 'ឃុំ រមេញ', 'Romenh Commune', '210505'),
    (
        '21.5.6',
        'ឃុំ ធ្លាប្រជុំ',
        'Thlea Prachum Commune',
        '210506'
    ),
    (
        '21.6',
        'ស្រុក ព្រៃកប្បាស',
        'Prey Kabbas District',
        '210600'
    ),
    (
        '21.6.1',
        'ឃុំ អង្កាញ់',
        'Angkanh Commune',
        '210601'
    ),
    (
        '21.6.2',
        'ឃុំ បានកាម',
        'Ban Kam Commune',
        '210602'
    ),
    (
        '21.6.3',
        'ឃុំ ចំប៉ា',
        'Champa Commune',
        '210603'
    ),
    ('21.6.4', 'ឃុំ ចារ', 'Char Commune', '210604'),
    (
        '21.6.5',
        'ឃុំ កំពែង',
        'Kampeaeng Commune',
        '210605'
    ),
    (
        '21.6.6',
        'ឃុំ កំពង់រាប',
        'Kampong Reab Commune',
        '210606'
    ),
    (
        '21.6.7',
        'ឃុំ ក្តាញ់',
        'Kdanh Commune',
        '210607'
    ),
    (
        '21.6.8',
        'ឃុំ ពោធិ៍រំចាក',
        'Pou Rumchak Commune',
        '210608'
    ),
    (
        '21.6.9',
        'ឃុំ ព្រៃកប្បាស',
        'Prey Kabbas Commune',
        '210609'
    ),
    (
        '21.6.10',
        'ឃុំ ព្រៃល្វា',
        'Prey Lvea Commune',
        '210610'
    ),
    (
        '21.6.11',
        'ឃុំ ព្រៃផ្តៅ',
        'Prey Phdau Commune',
        '210611'
    ),
    ('21.6.12', 'ឃុំ ស្នោ', 'Snao Commune', '210612'),
    (
        '21.6.13',
        'ឃុំ តាំងយ៉ាប',
        'Tang Yab Commune',
        '210613'
    ),
    (
        '21.7',
        'ស្រុក សំរោង​​',
        'Samraong District',
        '210700'
    ),
    (
        '21.7.1',
        'ឃុំ បឹងត្រាញ់ខាងជើង',
        'Boeng Tranh Khang Cheung Commune',
        '210701'
    ),
    (
        '21.7.2',
        'ឃុំ បឹងត្រាញ់ខាងត្បូង',
        'Boeng Tranh Khang Tboung Commune',
        '210702'
    ),
    (
        '21.7.3',
        'ឃុំ ជើងគួន',
        'Cheung Kuon Commune',
        '210703'
    ),
    (
        '21.7.4',
        'ឃុំ ជំរះពេន',
        'Chumreah Pen Commune',
        '210704'
    ),
    ('21.7.5', 'ឃុំ ខ្វាវ', 'Khvav Commune', '210705'),
    (
        '21.7.6',
        'ឃុំ លំចង់',
        'Lumchang Commune',
        '210706'
    ),
    (
        '21.7.7',
        'ឃុំ រវៀង',
        'Rovieng Commune',
        '210707'
    ),
    (
        '21.7.8',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '210708'
    ),
    ('21.7.9', 'ឃុំ សឹង្ហ', 'Soeng Commune', '210709'),
    ('21.7.10', 'ឃុំ ស្លា', 'Sla Commune', '210710'),
    ('21.7.11', 'ឃុំ ទ្រា', 'Trea Commune', '210711'),
    (
        '21.8',
        'ក្រុង ដូនកែវ',
        'Doun Kaev  Municipality',
        '210800'
    ),
    (
        '21.8.1',
        'សង្កាត់ បារាយណ៍',
        'Sangkat Baray',
        '210801'
    ),
    (
        '21.8.2',
        'សង្កាត់ រកាក្នុង',
        'Sangkat Roka Knong',
        '210802'
    ),
    (
        '21.8.3',
        'សង្កាត់ រកាក្រៅ',
        'Sangkat Roka Krau',
        '210803'
    ),
    (
        '21.9',
        'ស្រុក ត្រាំកក់',
        'Tram Kak District',
        '210900'
    ),
    (
        '21.9.1',
        'ឃុំ អង្គតាសោម',
        'Ang Ta Saom Commune',
        '210901'
    ),
    (
        '21.9.2',
        'ឃុំ ជាងទង',
        'Cheang Tong Commune',
        '210902'
    ),
    ('21.9.3', 'ឃុំ គុស', 'Kus Commune', '210903'),
    (
        '21.9.4',
        'ឃុំ លាយបូរ',
        'Leay Bour Commune',
        '210904'
    ),
    (
        '21.9.5',
        'ឃុំ ញ៉ែងញ៉ង',
        'Nhaeng Nhang Commune',
        '210905'
    ),
    (
        '21.9.6',
        'ឃុំ អូរសារាយ',
        'Ou Saray Commune',
        '210906'
    ),
    (
        '21.9.7',
        'ឃុំ ត្រពាំងក្រញូង',
        'Trapeang Kranhung Commune',
        '210907'
    ),
    (
        '21.9.8',
        'ឃុំ ឧត្តមសុរិយា',
        'Otdam Soriya Commune',
        '210908'
    ),
    ('21.9.9', 'ឃុំ ពពេល', 'Popel Commune', '210909'),
    (
        '21.9.10',
        'ឃុំ សំរោង',
        'Samraong Commune',
        '210910'
    ),
    (
        '21.9.11',
        'ឃុំ ស្រែរនោង',
        'Srae Ronoung Commune',
        '210911'
    ),
    (
        '21.9.12',
        'ឃុំ តាភេម',
        'Ta Phem Commune',
        '210912'
    ),
    (
        '21.9.13',
        'ឃុំ ត្រាំកក់',
        'Tram Kak Commune',
        '210913'
    ),
    (
        '21.9.14',
        'ឃុំ ត្រពាំងធំខាងជើង',
        'Trapeang Thum Khang Cheung Commune',
        '210914'
    ),
    (
        '21.9.15',
        'ឃុំ ត្រពាំងធំខាងត្បូង',
        'Trapeang Thum Khang Tboung Commune',
        '210915'
    ),
    (
        '21.1',
        'ស្រុក ទ្រាំង',
        'Treang District',
        '211000'
    ),
    (
        '21.10.1',
        'ឃុំ អង្កាញ់',
        'Angkanh Commune',
        '211001'
    ),
    (
        '21.10.2',
        'ឃុំ អង្គខ្នុរ',
        'Ang Khnor Commune',
        '211002'
    ),
    (
        '21.10.3',
        'ឃុំ ជីខ្មា',
        'Chi Khma Commune',
        '211003'
    ),
    (
        '21.10.4',
        'ឃុំ ខ្វាវ',
        'Khvav Commune',
        '211004'
    ),
    (
        '21.10.5',
        'ឃុំ ប្រាំបីមុំ',
        'Prambei Mum Commune',
        '211005'
    ),
    (
        '21.10.6',
        'ឃុំ អង្គកែវ',
        'Ang Kaev Commune',
        '211006'
    ),
    (
        '21.10.7',
        'ឃុំ ព្រៃស្លឹក',
        'Prey Sloek Commune',
        '211007'
    ),
    (
        '21.10.8',
        'ឃុំ រនាម',
        'Roneam Commune',
        '211008'
    ),
    (
        '21.10.9',
        'ឃុំ សំបួរ',
        'Sambuor Commune',
        '211009'
    ),
    (
        '21.10.10',
        'ឃុំ សន្លុង',
        'Sanlung Commune',
        '211010'
    ),
    (
        '21.10.11',
        'ឃុំ ស្មោង',
        'Smaong Commune',
        '211011'
    ),
    (
        '21.10.12',
        'ឃុំ ស្រង៉ែ',
        'Srangae Commune',
        '211012'
    ),
    (
        '21.10.13',
        'ឃុំ ធ្លក',
        'Thlok Commune',
        '211013'
    ),
    (
        '21.10.14',
        'ឃុំ ត្រឡាច',
        'Tralach Commune',
        '211014'
    ),
    (
        '22',
        'ខេត្ត ឧត្តរមានជ័យ',
        'Otdar Meanchey Province',
        '220000'
    ),
    (
        '22 .1',
        'ស្រុក ​អន្លង់វែង',
        'Anlung Veaeng District',
        '220100'
    ),
    (
        '22 .1.1',
        'ឃុំ អន្លង់វែង',
        'Anlung Veaeng Commune',
        '220101'
    ),
    (
        '22 .1.2',
        'ឃុំ ត្រពាំងតាវ',
        'Trapeang Tav Commune',
        '220103'
    ),
    (
        '22 .1.3',
        'ឃុំ ត្រពាំងប្រីយ៍',
        'Trapeang Prei Commune',
        '220104'
    ),
    (
        '22 .1.4',
        'ឃុំ ថ្លាត',
        'Thlat Commune',
        '220105'
    ),
    (
        '22 .1.5',
        'ឃុំ លំទង',
        'Lumtong Commune',
        '220106'
    ),
    (
        '22 .2',
        'ស្រុក បន្ទាយអំពិល',
        'Banteay Ampil District',
        '220200'
    ),
    (
        '22 .2.1',
        'ឃុំ អំពិល',
        'Ampil Commune',
        '220201'
    ),
    ('22 .2.2', 'ឃុំ បេង', 'Beng Commune', '220202'),
    (
        '22 .2.3',
        'ឃុំ គោកខ្ពស់',
        'Kouk Khpuos Commune',
        '220203'
    ),
    (
        '22 .2.4',
        'ឃុំ គោកមន',
        'Kouk Mon Commune',
        '220204'
    ),
    (
        '22 .3',
        '​​ស្រុក ចុងកាល់',
        'Chong Kal District',
        '220300'
    ),
    (
        '22 .3.1',
        'ឃុំ ជើងទៀន',
        'Cheung Tien Commune',
        '220301'
    ),
    (
        '22 .3.2',
        'ឃុំ ចុងកាល់',
        'Chong Kal Commune',
        '220302'
    ),
    (
        '22 .3.3',
        'ឃុំ ក្រសាំង',
        'Krasang Commune',
        '220303'
    ),
    ('22.3.4', 'ឃុំ ពង្រ', 'Pungro Commune', '220304'),
    (
        '22.4',
        'ក្រុង សំរោង',
        'Samraong Municipality',
        '220400'
    ),
    (
        '22.4.1',
        'សង្កាត់ បន្សាយរាក់',
        'Sangkat Bansay Reak',
        '220401'
    ),
    (
        '22.4.2',
        'សង្កាត់ បុស្បូវ',
        'Sangkat Bos Sbouv',
        '220402'
    ),
    (
        '22.4.3',
        'សង្កាត់ កូនគ្រៀល',
        'Sangkat Koun Kriel',
        '220403'
    ),
    (
        '22.4.4',
        'សង្កាត់ សំរោង',
        'Sangkat Samraong',
        '220404'
    ),
    (
        '22.4.5',
        'សង្កាត់ អូរស្មាច់',
        'Sangkat Ou Smach',
        '220405'
    ),
    (
        '22.5',
        'ស្រុក ត្រពាំងប្រាសាទ',
        'Trapeang Prasat District',
        '220500'
    ),
    (
        '22.5.1',
        'ឃុំ បាក់អន្លូង',
        'Bak Anlung Commune',
        '220501'
    ),
    (
        '22.5.2',
        'ឃុំ ផ្អាវ',
        'Ph''av Commune',
        '220502'
    ),
    (
        '22.5.3',
        'ឃុំ អូរស្វាយ',
        'Ou Svay Commune',
        '220503'
    ),
    (
        '22.5.4',
        'ឃុំ ព្រះប្រឡាយ',
        'Preah Pralay Commune',
        '220504'
    ),
    (
        '22.5.5',
        'ឃុំ ទំនប់ដាច់',
        'Tumnub Dach Commune',
        '220505'
    ),
    (
        '22.5.6',
        'ឃុំ ត្រពាំងប្រាសាទ',
        'Trapeang Prasat Commune',
        '220506'
    ),
    ('23', 'ខេត្ត កែប', 'Kep Province', '230000'),
    (
        '23.1',
        'ស្រុក ដំណាក់ចង្អើរ​',
        'Damnak Chang’aeu District',
        '230100'
    ),
    (
        '23.1.1',
        'ឃុំ អង្កោល',
        'Angkaol Commune',
        '230101'
    ),
    (
        '23.1.2',
        'ឃុំ ពងទឹក',
        'Pong Tuek Commune',
        '230103'
    ),
    (
        '23.2',
        'ក្រុង កែប',
        'Kaeb Municipality',
        '230200'
    ),
    (
        '23.2.1',
        'សង្កាត់ កែប',
        'Sangkat Kaeb',
        '230201'
    ),
    (
        '23.2.2',
        'សង្កាត់ ព្រៃធំ',
        'Sangkat Prey Thum',
        '230202'
    ),
    (
        '23.2.3',
        'សង្កាត់ អូរក្រសារ',
        'Sangkat Ou Krasar',
        '230203'
    ),
    (
        '24',
        'ខេត្ត ប៉ៃលិន',
        'Pailin Province',
        '240000'
    ),
    (
        '24.1',
        'ក្រុង ប៉ៃលិន',
        'Pailin Municipality',
        '240100'
    ),
    (
        '24.1.1',
        'សង្កាត់ ប៉ៃលិន',
        'Sangkat Pailin',
        '240101'
    ),
    (
        '24.1.2',
        'សង្កាត់ អូរតាវ៉ៅ',
        'Sangkat Ou Ta Vau',
        '240102'
    ),
    (
        '24.1.3',
        'សង្កាត់ ទួលល្វា',
        'Sangkat Tuol Lvea',
        '240103'
    ),
    (
        '24.1.4',
        'សង្កាត់ បយ៉ាខា',
        'Sangkat Ba Yakha',
        '240104'
    ),
    (
        '24.2',
        'ស្រុក សាលាក្រៅ',
        'Sala Krau District',
        '240200'
    ),
    (
        '24.2.1',
        'ឃុំ សាលាក្រៅ',
        'Sala Krau Commune',
        '240201'
    ),
    (
        '24.2.2',
        'ឃុំ ស្ទឹងត្រង់',
        'Stueng Trang Commune',
        '240202'
    ),
    (
        '24.2.3',
        'ឃុំ ស្ទឹងកាច់',
        'Stueng Kach Commune',
        '240203'
    ),
    (
        '24.2.4',
        'ឃុំ អូរអណ្តូង',
        'Ou Andoung Commune',
        '240204'
    ),
    (
        '25',
        'ខេត្ត ត្បូងឃ្មុំ',
        'Tboung Khmum Province',
        '250000'
    ),
    (
        '25.1',
        'ស្រុក តំបែរ',
        'Dambae District',
        '250100'
    ),
    (
        '25.1.1',
        'ឃុំ ចុងជាច',
        'Chong Cheach Commune',
        '250101'
    ),
    (
        '25.1.2',
        'ឃុំ តំបែរ',
        'Dambae Commune',
        '250102'
    ),
    (
        '25.1.3',
        'ឃុំ គោកស្រុក',
        'Kouk Srok Commune',
        '250103'
    ),
    (
        '25.1.4',
        'ឃុំ នាងទើត',
        'Neang Teut Commune',
        '250104'
    ),
    ('25.1.5', 'ឃុំ សេដា', 'Seda Commune', '250105'),
    (
        '25.1.6',
        'ឃុំ ទឹកជ្រៅ',
        'Tuek Chrov Commune',
        '250106'
    ),
    (
        '25.1.7',
        'ឃុំ ត្រពាំងព្រីង',
        'Trapeang Pring Commune',
        '250107'
    ),
    (
        '25.2',
        'ស្រុក ក្រូចឆ្មារ',
        'Krouch Chhmar District',
        '250200'
    ),
    ('25.2.1', 'ឃុំ ឈូក', 'Chhuk Commune', '250201'),
    (
        '25.2.2',
        'ឃុំ ជំនីក',
        'Chumnik Commune',
        '250202'
    ),
    (
        '25.2.3',
        'ឃុំ កំពង់ទ្រាស',
        'Kampong Treas Commune',
        '250203'
    ),
    (
        '25.2.4',
        'ឃុំ កោះពីរ',
        'Kaoh Pir Commune',
        '250204'
    ),
    (
        '25.2.5',
        'ឃុំ ក្រូចឆ្មារ',
        'Krouch Chhmar Commune',
        '250205'
    ),
    (
        '25.2.6',
        'ឃុំ ប៉ឺស១',
        'Peus Muoy Commune',
        '250206'
    ),
    (
        '25.2.7',
        'ឃុំ ប៉ើស២',
        'Peus Pir Commune Commune',
        '250207'
    ),
    (
        '25.2.8',
        'ឃុំ ព្រែកអាជី',
        'Preaek A Chi Commune',
        '250208'
    ),
    (
        '25.2.9',
        'ឃុំ រការខ្នុរ',
        'Roka Khnor Commune',
        '250209'
    ),
    (
        '25.2.10',
        'ឃុំ ស្វាយឃ្លាំង',
        'Svay Khleang Commune',
        '250210'
    ),
    ('25.2.11', 'ឃុំ ទ្រា', 'Trea Commune', '250211'),
    (
        '25.2.12',
        'ឃុំ ទួលស្នួល',
        'Tuol Snuol Commune',
        '250212'
    ),
    (
        '25.3',
        'ស្រុក មេមត់',
        'Memut District',
        '250300'
    ),
    (
        '25.3.1',
        'ឃុំ ចាន់មូល',
        'Chan Mul Commune',
        '250301'
    ),
    ('25.3.2', 'ឃុំ ជាំ', 'Choam Commune', '250302'),
    (
        '25.3.3',
        'ឃុំ ជាំក្រវៀន',
        'Choam Kravien Commune',
        '250303'
    ),
    (
        '25.3.4',
        'ឃុំ ជាំតាម៉ៅ',
        'Choam Ta Mau Commune',
        '250304'
    ),
    ('25.3.5', 'ឃុំ ដារ', 'Dar Commune', '250305'),
    (
        '25.3.6',
        'ឃុំ កំពាន់',
        'Kampoan Commune',
        '250306'
    ),
    ('25.3.7', 'ឃុំ មេមង', 'Memong Commune', '250307'),
    ('25.3.8', 'ឃុំ មេមត់', 'Memut Commune', '250308'),
    ('25.3.9', 'ឃុំ រូង', 'Rung Commune', '250309'),
    (
        '25.3.10',
        'ឃុំ រំចេក',
        'Rumchek Commune',
        '250310'
    ),
    (
        '25.3.11',
        'ឃុំ ត្រមូង',
        'Tramung Commune',
        '250311'
    ),
    (
        '25.3.12',
        'ឃុំ ទន្លូង',
        'Tunlung Commune',
        '250312'
    ),
    (
        '25.3.13',
        'ឃុំ ទ្រៀក',
        'Triek Commune',
        '250313'
    ),
    ('25.3.14', 'ឃុំ គគីរ', 'Kokir Commune', '250314'),
    (
        '25.4',
        'ស្រុក អូររាំងឳ',
        'Ou Reang Ov District',
        '250400'
    ),
    (
        '25.4.1',
        'ឃុំ អំពិលតាពក',
        'Ampil Ta Pok Commune',
        '250401'
    ),
    ('25.4.2', 'ឃុំ ចក', 'Chak Commune', '250402'),
    (
        '25.4.3',
        'ឃុំ ដំរិល',
        'Damrel Commune',
        '250403'
    ),
    (
        '25.4.4',
        'ឃុំ គងជ័យ',
        'Kong Chey Commune',
        '250404'
    ),
    ('25.4.5', 'ឃុំ មៀន', 'Mien Commune', '250405'),
    (
        '25.4.6',
        'ឃុំ ព្រះធាតុ',
        'Preah Theat Commune',
        '250406'
    ),
    (
        '25.4.7',
        'ឃុំ ទួលសូភី',
        'Tuol Souphi Commune',
        '250407'
    ),
    (
        '25.5',
        'ស្រុក ពញាក្រែក',
        'Ponhea Kraek District',
        '250500'
    ),
    (
        '25.5.1',
        'ឃុំ ដូនតី',
        'Doun Tei Commune',
        '250501'
    ),
    ('25.5.2', 'ឃុំ កក់', 'Kak Commune', '250502'),
    (
        '25.5.3',
        'ឃុំ កណ្តោលជ្រុំ',
        'Kandaol Chrum Commune',
        '250503'
    ),
    (
        '25.5.4',
        'ឃុំ កោងកាង',
        'Kaong Kang Commune',
        '250504'
    ),
    ('25.5.5', 'ឃុំ ក្រែក', 'Kraek Commune', '250505'),
    ('25.5.6', 'ឃុំ ពពេល', 'Popel Commune', '250506'),
    (
        '25.5.7',
        'ឃុំ ត្រពាំងផ្លុង',
        'Trapeang Phlong Commune',
        '250507'
    ),
    (
        '25.5.8',
        'ឃុំ វាលម្លូរ',
        'Veal Mlu Commune',
        '250508'
    ),
    (
        '25.6',
        'ក្រុង សួង',
        'Suong Municipality',
        '250600'
    ),
    (
        '25.6.1',
        'សង្កាត់ សួង',
        'Sangkat Suong',
        '250601'
    ),
    (
        '25.6.2',
        'សង្កាត់ វិហារលួង',
        'Sangkat Vihea Luong',
        '250602'
    ),
    (
        '25.7',
        'ស្រុក ត្បូងឃ្មុំ',
        'Tboung Khmum District',
        '250700'
    ),
    (
        '25.7.1',
        'ឃុំ អញ្ចើម',
        'Anhchaeum Commune',
        '250701'
    ),
    (
        '25.7.2',
        'ឃុំ បឹងព្រួល',
        'Boeng Pruol Commune',
        '250702'
    ),
    ('25.7.3', 'ឃុំ ជីគរ', 'Chikor Commune', '250703'),
    (
        '25.7.4',
        'ឃុំ ជីរោទ៍ ទី ១',
        'Chirou Ti Muoy Commune',
        '250704'
    ),
    (
        '25.7.5',
        'ឃុំ ជីរោទ៍ ទី ២',
        'Chirou Ti Pir Commune',
        '250705'
    ),
    ('25.7.6', 'ឃុំ ជប់', 'Chub Commune', '250706'),
    ('25.7.7', 'ឃុំ គរ', 'Kor Commune', '250707'),
    (
        '25.7.8',
        'ឃុំ ល្ងៀង',
        'Lngieng Commune',
        '250708'
    ),
    (
        '25.7.9',
        'ឃុំ មង់រៀវ',
        'Mong Riev Commune',
        '250709'
    ),
    (
        '25.7.10',
        'ឃុំ ពាមជីលាំង',
        'Peam Chileang Commune',
        '250710'
    ),
    (
        '25.7.11',
        'ឃុំ រកា ព ប្រាំ',
        'Roka Po Pram Commune',
        '250711'
    ),
    (
        '25.7.12',
        'ឃុំ ស្រឡប់',
        'Sralab Commune',
        '250712'
    ),
    (
        '25.7.13',
        'ឃុំ ថ្មពេជ្រ',
        'Thma Pech Commune',
        '250713'
    ),
    (
        '25.7.14',
        'ឃុំ ទន្លេបិទ',
        'Tonle Bet Commune',
        '250714'
    ) ON CONFLICT (code) DO
UPDATE
SET name_kh = EXCLUDED.name_kh,
    name_en = EXCLUDED.name_en,
    postal_code = EXCLUDED.postal_code;
-- Back-fill fts_vector for all rows
UPDATE locations
SET fts_vector = to_tsvector(
        'simple',
        coalesce(name_en, '') || ' ' || coalesce(postal_code, '')
    );
COMMIT;
-- Total inserted/updated: 1887 rows