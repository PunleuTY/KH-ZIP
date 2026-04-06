import { useState, useRef, useCallback } from 'react';
import { search as apiSearch } from '../utils/api';
import { useCache } from './useCache';

const DEBOUNCE_MS = 180;

/**
 * useSearch — manages debounced search with cache-first strategy.
 *
 * Returns:
 *   results    – array of location objects
 *   loading    – boolean
 *   tookMs     – last response time in ms
 *   fromCache  – boolean (true if result came from localStorage)
 *   error      – error message string or null
 *   runSearch  – (query: string) => void
 *   clear      – () => void  resets to empty state
 */
export function useSearch() {
    const [results, setResults] = useState([]);
    const [loading, setLoading] = useState(false);
    const [tookMs, setTookMs] = useState(null);
    const [fromCache, setFromCache] = useState(false);
    const [error, setError] = useState(null);

    const timer = useRef(null);
    const { get: cacheGet, set: cacheSet } = useCache();

    const runSearch = useCallback((query) => {
        clearTimeout(timer.current);

        if (!query.trim()) {
            setResults([]);
            setTookMs(null);
            setError(null);
            return;
        }

        timer.current = setTimeout(async () => {
            // 1. Try cache first (instant)
            const cached = cacheGet(query);
            if (cached) {
                setResults(cached.results || []);
                setTookMs(cached.took_ms);
                setFromCache(true);
                setError(null);
                return;
            }

            // 2. Fetch from API
            setLoading(true);
            setError(null);
            try {
                const data = await apiSearch(query, 15);
                setResults(data.results || []);
                setTookMs(data.took_ms);
                setFromCache(false);
                cacheSet(query, data);
            } catch (err) {
                setError(err.message);
                // Offline fallback — show whatever cache has for similar queries
                setResults([]);
            } finally {
                setLoading(false);
            }
        }, DEBOUNCE_MS);
    }, []);

    const clear = useCallback(() => {
        clearTimeout(timer.current);
        setResults([]);
        setTookMs(null);
        setError(null);
        setLoading(false);
    }, []);

    return { results, loading, tookMs, fromCache, error, runSearch, clear };
}