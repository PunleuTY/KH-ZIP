import React, { useState, useRef, useEffect } from 'react';

const TYPE_CLASS = {
    province: 'badge-province',
    district: 'badge-district',
    commune: 'badge-commune',
    village: 'badge-village',
};

/**
 * SearchBar
 *
 * Props:
 *   onSearch(query)          – called on every keystroke (debounced upstream)
 *   results        []        – search results for suggestions dropdown
 *   onSelect(item)           – called when user picks a suggestion
 *   loading        bool
 *   tookMs         number|null
 *   fromCache      bool
 */
export default function SearchBar({
    onSearch,
    results = [],
    onSelect,
    loading,
    tookMs,
    fromCache,
}) {
    const [value, setValue] = useState('');
    const [dropOpen, setDropOpen] = useState(false);
    const [activeIdx, setActiveIdx] = useState(-1);
    const inputRef = useRef(null);
    const wrapRef = useRef(null);

    // Close dropdown on outside click
    useEffect(() => {
        function handler(e) {
            if (wrapRef.current && !wrapRef.current.contains(e.target)) {
                setDropOpen(false);
            }
        }
        document.addEventListener('mousedown', handler);
        return () => document.removeEventListener('mousedown', handler);
    }, []);

    // Open dropdown whenever we have results
    useEffect(() => {
        setDropOpen(results.length > 0 && value.trim().length > 0);
        setActiveIdx(-1);
    }, [results]);

    function handleChange(e) {
        const q = e.target.value;
        setValue(q);
        onSearch(q);
    }

    function handleKeyDown(e) {
        if (!dropOpen) return;
        const max = Math.min(results.length - 1, 5);
        if (e.key === 'ArrowDown') {
            e.preventDefault();
            setActiveIdx((i) => Math.min(i + 1, max));
        } else if (e.key === 'ArrowUp') {
            e.preventDefault();
            setActiveIdx((i) => Math.max(i - 1, 0));
        } else if (e.key === 'Enter' && activeIdx >= 0) {
            e.preventDefault();
            pickItem(results[activeIdx]);
        } else if (e.key === 'Escape') {
            setDropOpen(false);
        }
    }

    function pickItem(item) {
        setValue(item.name_en);
        setDropOpen(false);
        onSelect(item);
    }

    const showDrop = dropOpen && results.length > 0;

    return (
        <div className="search-section">
            <div className="search-label">
                <span className="label-line" />
                ស្វែងរកទីតាំង · Find Location
            </div>

            <div className="search-wrap" ref={wrapRef}>
                <input
                    ref={inputRef}
                    type="text"
                    className="search-input"
                    placeholder="ភ្នំពេញ · Phnom Penh · 12000…"
                    value={value}
                    autoComplete="off"
                    spellCheck={false}
                    onChange={handleChange}
                    onKeyDown={handleKeyDown}
                    onFocus={() => results.length > 0 && setDropOpen(true)}
                />
                <span className="search-icon">{loading ? '…' : '⌕'}</span>

                {showDrop && (
                    <div className="suggestions-dropdown">
                        {results.slice(0, 6).map((r, i) => (
                            <div
                                key={r.code}
                                className={`suggestion-item${i === activeIdx ? ' active' : ''}`}
                                onMouseDown={() => pickItem(r)}
                                onMouseEnter={() => setActiveIdx(i)}
                            >
                                <span className={`sug-badge ${TYPE_CLASS[r.type] || 'badge-village'}`}>
                                    {r.type}
                                </span>
                                <div className="sug-names">
                                    <div className="sug-kh">{r.name_kh}</div>
                                    <div className="sug-en">{r.name_en}</div>
                                </div>
                                <span className="sug-postal">{r.postal_code}</span>
                            </div>
                        ))}
                    </div>
                )}
            </div>

            <div className="search-meta">
                <span className="meta-count">
                    {value
                        ? `${results.length} result${results.length !== 1 ? 's' : ''}${fromCache ? ' · cached' : ''}`
                        : 'Type to search…'}
                </span>
                {tookMs != null && (
                    <span className="took-badge">⚡ {Math.round(tookMs)}ms</span>
                )}
            </div>

            {/* ── Styles scoped here via <style jsx> alternative: inline module ── */}
            <style>{`
        .search-section { margin-bottom: 24px; }

        .search-label {
          display: flex; align-items: center; gap: 8px;
          font-family: var(--font-mono);
          font-size: 10px; letter-spacing: .15em;
          text-transform: uppercase; color: var(--text-dim);
          margin-bottom: 10px;
        }
        .label-line { width: 16px; height: 1px; background: var(--gold); flex-shrink: 0; }

        .search-wrap { position: relative; }

        .search-input {
          width: 100%;
          background: var(--surface);
          border: 1px solid var(--border);
          border-radius: var(--radius);
          padding: 15px 52px 15px 20px;
          font-family: var(--font-khmer);
          font-size: 16px; color: var(--text);
          outline: none; caret-color: var(--gold);
          transition: border-color .2s, box-shadow .2s;
        }
        .search-input::placeholder { color: var(--text-muted); font-size: 14px; }
        .search-input:focus {
          border-color: rgba(201,168,76,.4);
          box-shadow: 0 0 0 3px rgba(201,168,76,.07), 0 0 24px rgba(201,168,76,.04);
        }

        .search-icon {
          position: absolute; right: 18px; top: 50%;
          transform: translateY(-50%);
          color: var(--text-muted); font-size: 18px;
          pointer-events: none; transition: color .2s;
        }
        .search-input:focus ~ .search-icon { color: var(--gold); }

        .suggestions-dropdown {
          position: absolute; top: calc(100% + 6px); left: 0; right: 0;
          background: var(--surface2);
          border: 1px solid rgba(201,168,76,.2);
          border-radius: var(--radius); z-index: 200;
          overflow: hidden;
          box-shadow: 0 20px 60px rgba(0,0,0,.65), 0 0 0 1px rgba(255,255,255,.03);
          animation: dropIn .14s ease;
        }
        @keyframes dropIn { from{opacity:0;transform:translateY(-4px)} to{opacity:1;transform:translateY(0)} }

        .suggestion-item {
          display: flex; align-items: center; gap: 10px;
          padding: 11px 14px;
          cursor: pointer;
          border-bottom: 1px solid var(--border);
          transition: background .12s;
        }
        .suggestion-item:last-child { border-bottom: none; }
        .suggestion-item:hover,
        .suggestion-item.active { background: rgba(201,168,76,.08); }

        .sug-badge {
          font-family: var(--font-mono); font-size: 9px;
          text-transform: uppercase; letter-spacing: .08em;
          padding: 3px 7px; border-radius: 4px; flex-shrink: 0;
        }
        .badge-province { background: rgba(201,168,76,.18); color: var(--gold); }
        .badge-district { background: rgba(45,212,191,.14); color: var(--teal); }
        .badge-commune  { background: rgba(217,79,61,.14);  color: var(--red);  }
        .badge-village  { background: rgba(255,255,255,.07);color: var(--text-dim); }

        .sug-names { flex: 1; min-width: 0; }
        .sug-kh {
          font-family: var(--font-khmer); font-size: 14px; color: var(--text);
          white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
        }
        .sug-en {
          font-size: 11px; color: var(--text-dim); margin-top: 1px;
          white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
        }
        .sug-postal {
          font-family: var(--font-mono); font-size: 13px;
          color: var(--gold); letter-spacing: .05em; flex-shrink: 0;
        }

        .search-meta {
          display: flex; align-items: center;
          justify-content: space-between;
          margin-top: 8px;
          font-family: var(--font-mono); font-size: 10px; color: var(--text-muted);
        }
        .took-badge {
          padding: 3px 9px;
          background: var(--surface2);
          border: 1px solid var(--border);
          border-radius: 100px; color: var(--teal); font-weight: 500;
        }
      `}</style>
        </div>
    );
}