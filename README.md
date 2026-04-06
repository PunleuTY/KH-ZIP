# LEAKKOD (លេខកូដ)

## 1. Overview

LEAKKOD is a web-based application designed to simplify the process of retrieving official postal (portal) codes for locations across Cambodia. The system provides a fast, accurate, and user-friendly interface that allows users to search for portal codes using location names or perform reverse lookups using the code itself.

The platform is built using official data published by the Ministry of Posts and Telecommunications of Cambodia (MPTC), ensuring reliability and consistency.

---

## 2. Problem Statement

Accessing portal codes in Cambodia can be inefficient due to:

* Fragmented information across multiple sources
* Overly complex or cluttered websites
* Time-consuming manual lookup processes

Users often need portal codes for formal documentation, logistics, and identity verification, yet the retrieval process lacks simplicity and speed.

---

## 3. Solution

This project introduces a centralized and optimized search engine that:

* Enables instant lookup of portal codes by location
* Supports reverse search (portal code → location)
* Reduces search time through efficient indexing and query handling
* Presents results in a clean, structured, and accessible format

The system prioritizes performance, usability, and data accuracy.

---

## 4. Key Features

### 4.1 Location-Based Search

* Search by province, district, commune, or village
* Supports partial and flexible input queries
* Displays hierarchical location information

### 4.2 Reverse Lookup

* Input a portal code to retrieve full location details
* Useful for verification and administrative tasks

### 4.3 Geospatial Visualization

* Interactive map integration for visual context
* Displays selected locations geographically
* Enhances spatial understanding of results

### 4.4 Fast Response System

* Optimized database queries
* Indexed search for low-latency results

### 4.5 Clean and Minimal Interface

* Focused UI to eliminate unnecessary complexity
* Designed for quick interaction and readability

---

## 5. System Architecture

### 5.1 Frontend

* Framework: React.js
* Responsibilities:

  * User interface rendering
  * Search interaction handling
  * Map visualization integration

### 5.2 Backend

* Framework: Express.js (Node.js)
* Responsibilities:

  * API development
  * Query processing
  * Data validation and transformation

### 5.3 Database

* System: PostgreSQL
* Responsibilities:

  * Storage of structured portal code data
  * Efficient querying using indexing strategies

---

## 6. Data Source

* Official portal code dataset published by MPTC
* Additional reference: existing implementation by Mr. Seanghay

Data is processed, cleaned, and structured to ensure:

* Consistency
* Accuracy
* Query efficiency

---

## 7. API Design (Core Endpoints)

```
GET /api/search?query={location}
GET /api/reverse?code={portal_code}
GET /api/location/{id}
```

---

## 8. Setup Instructions

### 8.1 Prerequisites

* Node.js (v18 or higher)
* PostgreSQL
* npm or yarn

---

### 8.2 Backend Setup

```
cd backend
npm install
```

Configure environment variables:

```
PORT=5000
DB_HOST=localhost
DB_USER=your_user
DB_PASSWORD=your_password
DB_NAME=portal_code_db
```

Run server:

```
npm run dev
```

---

### 8.3 Frontend Setup

```
cd frontend
npm install
npm run dev
```

---

### 8.4 Database Setup

1. Create database in PostgreSQL
2. Execute schema file:

```
psql -U your_user -d portal_code_db -f database/schema.sql
```

1. Import dataset

---

## 9. Future Enhancements

* Offline support (Progressive Web App)
* Multilingual support (Khmer / English)
* Integration with logistics and e-commerce platforms
* Advanced filtering (region, administrative level)
* Integrate with Khmer Auto Suggestion

---

## 10. Use Cases

* Individuals filling official forms
* Logistics and delivery services
* Government and administrative workflows
* Data-driven applications requiring location validation

---

## 11. Contribution

Contributions are welcome. Please follow standard development practices:

* Fork the repository
* Create a feature branch
* Submit a pull request with clear documentation

---

## 12. License

This project is intended for educational and practical use. Licensing terms can be defined based on deployment and distribution requirements.

---

## 13. Conclusion

LEAKKOD is designed as a foundational utility rather than a simple web application. By focusing on accuracy, performance, and usability, the system aims to streamline access to essential location data across Cambodia.

The long-term vision is to evolve this platform into a reliable infrastructure component that can support broader digital services and integrations.
