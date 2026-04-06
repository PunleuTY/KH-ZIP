import { useRef } from 'react';

const STORAGE_KEY = 'khmer_postal_cache_v1';

// Load once from localStorage into memory
function loadFromStorage() {
    try {
        const raw = localStorage.getItem(STORAGE_KEY);
        return raw ? JSON.parse(raw) : {};
    } catch {
        return {};
    }
}

function saveToStorage(cache) {
    try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(cache));
    } catch {
        // Storage quota exceeded — fail silently
    }
}

/**
 * In-memory + localStorage cache for search results.
 * Key: normalised query string.
 * Value: full API response { results, took_ms, query }.
 */
export function useCache() {
    // Single shared in-memory reference (survives re-renders, not re-mounts)
    const cache = useRef(loadFromStorage());

    function get(q) {
        return cache.current[q.toLowerCase().trim()] || null;
    }

    function set(q, data) {
        const key = q.toLowerCase().trim();
        cache.current[key] = data;
        saveToStorage(cache.current);
    }

    function clear() {
        cache.current = {};
        try { localStorage.removeItem(STORAGE_KEY); } catch { }
    }

    return { get, set, clear };
}