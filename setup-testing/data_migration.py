import json
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="kh_postal_code",
    user="typunleu",
    password="123123",
    port="5432",
)

cur = conn.cursor()

with open("./dataset/postal_codes.json", "r") as f:
    data = json.load(f)

for row in data:
    cur.execute(
        "INSERT INTO locations (code, name_kh, name_en, postal_code) VALUES (%s, %s, %s, %s)",
        (
            row[0],
            row[1],
            row[2],
            row[3],
        ),
    )

conn.commit()
cur.close()
conn.close()
