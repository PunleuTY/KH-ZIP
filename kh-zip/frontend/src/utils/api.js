// Base URL: Vite dev proxy rewrites /api → localhost:3001
// In production set VITE_API_URL to your deployed backend
const BASE = import.meta.env.VITE_API_URL || '/api';

async function request(path) {
    const res = await fetch(`${BASE}${path}`);
    if (!res.ok) {
        const err = await res.json().catch(() => ({ error: res.statusText }));
        throw new Error(err.error || res.statusText);
    }
    return res.json();
}

/**
 * Search locations by query string (Khmer or English or postal code).
 * @param {string} q
 * @param {number} limit
 */
export function search(q, limit = 15) {
    return request(`/search?q=${encodeURIComponent(q)}&limit=${limit}`);
}

/**
 * Reverse lookup: postal code → full hierarchy.
 * @param {string} postalCode
 */
export function reverse(postalCode) {
    return request(`/reverse?postal_code=${encodeURIComponent(postalCode)}`);
}

/**
 * Get a single location + its direct children.
 * @param {string} code  e.g. "1.1"
 */
export function location(code) {
    return request(`/location/${encodeURIComponent(code)}`);
}

/**
 * Get all province-level locations.
 */
export function provinces() {
    return request('/provinces');
}

/**
 * Health check — returns { status, total_locations }.
 */
export function health() {
    return request('/health');
}