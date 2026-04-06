import React from 'react';

const TYPE_CLASS = {
    province: 'badge-province',
    district: 'badge-district',
    commune: 'badge-commune',
    village: 'badge-village',
};

export default function ResultList({ results = [], selectedCode, onSelect }) {
    if (!results.length) return (
        <div className="empty-state">
            <div className="empty-icon">🗺</div>
            <div className="empty-text">ចាប់ផ្តើមស្វែងរក</div>
            <div className="empty-sub">Search by Khmer, English or postal code</div>
            <style>{emptyStyle}</style>
        </div>
    );

    return (
        <div className="results-list">
            <div className="results-header">
                <span>Results</span>
                <span>{results.length} locations</span>
            </div>
            {results.map((r) => (
                <div
                    key={r.code}
                    className={`result-card${r.code === selectedCode ? ' selected' : ''}`}
                    onClick={() => onSelect(r)}
                >
                    <div className="card-top">
                        <div>
                            <div className="card-name-kh">{r.name_kh}</div>
                            <div className="card-name-en">{r.name_en}</div>
                        </div>
                        <div className="card-postal">{r.postal_code}</div>
                    </div>
                    <div className="card-bottom">
                        <span className={`type-badge ${TYPE_CLASS[r.type] || 'badge-village'}`}>{r.type}</span>
                        <span className="code-tag">{r.code}</span>
                    </div>
                </div>
            ))}
            <style>{listStyle}</style>
        </div>
    );
}

const listStyle = `
  .results-list { display: flex; flex-direction: column; gap: 0; overflow-y: auto; flex: 1; }
  .results-header {
    display: flex; justify-content: space-between;
    font-family: var(--font-mono); font-size: 10px;
    letter-spacing: .12em; text-transform: uppercase;
    color: var(--text-muted); padding-bottom: 10px;
    border-bottom: 1px solid var(--border); margin-bottom: 10px;
  }
  .result-card {
    background: var(--surface); border: 1px solid var(--border);
    border-radius: var(--radius); padding: 14px 16px;
    margin-bottom: 8px; cursor: pointer;
    transition: all .18s; position: relative; overflow: hidden;
  }
  .result-card::before {
    content: ''; position: absolute;
    left: 0; top: 0; bottom: 0; width: 3px;
    background: transparent; transition: background .18s;
  }
  .result-card:hover::before, .result-card.selected::before { background: var(--gold); }
  .result-card:hover   { background: var(--surface2); border-color: rgba(201,168,76,.2); }
  .result-card.selected{ border-color: rgba(201,168,76,.35); background: rgba(201,168,76,.04); }
  .card-top { display: flex; justify-content: space-between; align-items: flex-start; gap: 8px; }
  .card-name-kh { font-family: var(--font-khmer); font-size: 16px; font-weight: 700; line-height: 1.3; }
  .card-name-en { font-size: 12px; color: var(--text-dim); margin-top: 3px; }
  .card-postal  { font-family: var(--font-mono); font-size: 18px; color: var(--gold); letter-spacing: .05em; flex-shrink: 0; }
  .card-bottom  { display: flex; align-items: center; gap: 8px; margin-top: 10px; }
  .type-badge {
    font-family: var(--font-mono); font-size: 9px;
    text-transform: uppercase; letter-spacing: .08em;
    padding: 3px 7px; border-radius: 4px;
  }
  .badge-province { background: rgba(201,168,76,.18); color: var(--gold); }
  .badge-district { background: rgba(45,212,191,.14); color: var(--teal); }
  .badge-commune  { background: rgba(217,79,61,.14);  color: var(--red); }
  .badge-village  { background: rgba(255,255,255,.07);color: var(--text-dim); }
  .code-tag {
    font-family: var(--font-mono); font-size: 10px;
    color: var(--text-muted); background: var(--surface2);
    padding: 2px 8px; border-radius: 4px;
  }
`;
const emptyStyle = `
  .empty-state { display:flex;flex-direction:column;align-items:center;justify-content:center;gap:10px;padding:48px 0;color:var(--text-muted); }
  .empty-icon  { font-size:38px;opacity:.35; }
  .empty-text  { font-family:var(--font-khmer);font-size:15px; }
  .empty-sub   { font-size:11px; }
`;