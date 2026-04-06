import React, { useState } from 'react';
import { reverse as apiReverse } from '../utils/api';

const LEVEL_COLORS = { province: 'lv-gold', district: 'lv-teal', commune: 'lv-red', village: 'lv-gray' };

export default function ReverseLookup({ onLocated }) {
    const [postal, setPostal] = useState('');
    const [result, setResult] = useState(null);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);

    async function doLookup() {
        if (!postal.trim()) return;
        setLoading(true); setError(null); setResult(null);
        try {
            const data = await apiReverse(postal.trim());
            setResult(data);
            if (data.hierarchy?.length && onLocated) {
                const last = data.hierarchy[data.hierarchy.length - 1];
                onLocated({ ...last, type: last.level });
            }
        } catch (err) {
            setError(`"${postal}" not found in the database`);
        } finally { setLoading(false); }
    }

    return (
        <div className="reverse-panel">
            <div className="search-label"><span className="label-line" />លេខកូដ → ទីតាំង · Code → Location</div>

            <div className="rev-row">
                <input
                    type="text" className="rev-input"
                    placeholder="e.g. 10201"
                    value={postal} maxLength={6}
                    onChange={(e) => setPostal(e.target.value.replace(/\D/g, ''))}
                    onKeyDown={(e) => e.key === 'Enter' && doLookup()}
                />
                <button className="rev-btn" onClick={doLookup} disabled={loading}>
                    {loading ? '…' : 'Lookup'}
                </button>
            </div>

            {error && <div className="rev-error">{error}</div>}

            {!result && !error && (
                <div className="empty-state">
                    <div className="empty-icon">🔢</div>
                    <div className="empty-text">Enter a 5–6 digit postal code</div>
                    <div className="empty-sub">e.g. 10201 · 12000 · 040300</div>
                </div>
            )}

            {result && (
                <>
                    <div className="hierarchy-card">
                        <div className="hier-header">
                            <span>Location Hierarchy</span>
                            <span className="hier-postal">{result.postal_code}</span>
                        </div>
                        {result.hierarchy.map((h, i) => (
                            <div key={h.code} className={`hier-row`} style={{ animationDelay: `${i * 70}ms` }}>
                                <div className="hier-connector">
                                    <span className={`h-dot ${LEVEL_COLORS[h.level] || 'lv-gray'}`} />
                                    {i < result.hierarchy.length - 1 && <span className="h-line" />}
                                </div>
                                <div className="h-content">
                                    <div className="h-level">{h.level}</div>
                                    <div className="h-kh">{h.name_kh}</div>
                                    <div className="h-en">{h.name_en}</div>
                                </div>
                                <div className="h-code">{h.postal_code}</div>
                            </div>
                        ))}
                    </div>

                    <div className="full-addr-box">
                        <div className="addr-label">Full Address</div>
                        <div className="addr-kh">{result.full_address_kh}</div>
                        <div className="addr-en">{result.full_address_en}</div>
                    </div>
                </>
            )}

            <style>{revStyle}</style>
        </div>
    );
}

const revStyle = `
  .reverse-panel { display:flex;flex-direction:column;gap:14px; }
  .search-label  { display:flex;align-items:center;gap:8px;font-family:var(--font-mono);font-size:10px;letter-spacing:.15em;text-transform:uppercase;color:var(--text-dim); }
  .label-line    { width:16px;height:1px;background:var(--gold);flex-shrink:0; }
  .rev-row       { display:flex;gap:8px; }
  .rev-input {
    flex:1;background:var(--surface);border:1px solid var(--border);
    border-radius:var(--radius);padding:14px 18px;
    font-family:var(--font-mono);font-size:20px;letter-spacing:.12em;
    color:var(--gold-light);outline:none;transition:border-color .2s;
  }
  .rev-input::placeholder{color:var(--text-muted);font-size:13px;letter-spacing:.05em;}
  .rev-input:focus{border-color:rgba(201,168,76,.4);}
  .rev-btn {
    background:linear-gradient(135deg,var(--gold) 0%,#8b6914 100%);
    border:none;border-radius:var(--radius);padding:14px 20px;
    color:#0a0a0f;font-family:var(--font-mono);font-size:11px;
    font-weight:500;letter-spacing:.1em;text-transform:uppercase;
    cursor:pointer;transition:opacity .18s;white-space:nowrap;
  }
  .rev-btn:hover{opacity:.88;} .rev-btn:disabled{opacity:.5;cursor:not-allowed;}
  .rev-error { font-size:12px;color:var(--red);font-family:var(--font-mono);padding:8px 12px;background:var(--red-dim);border-radius:var(--radius-sm);border:1px solid rgba(217,79,61,.2); }
  .empty-state { display:flex;flex-direction:column;align-items:center;gap:10px;padding:36px 0;color:var(--text-muted); }
  .empty-icon  { font-size:36px;opacity:.35; }
  .empty-text  { font-family:var(--font-khmer);font-size:14px; }
  .empty-sub   { font-size:11px; }
  .hierarchy-card { background:var(--surface);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden; }
  .hier-header {
    display:flex;justify-content:space-between;padding:11px 16px;
    background:var(--gold-dim);border-bottom:1px solid rgba(201,168,76,.15);
    font-family:var(--font-mono);font-size:10px;letter-spacing:.12em;text-transform:uppercase;color:var(--gold);
  }
  .hier-postal { color:var(--gold-light); }
  .hier-row {
    display:flex;align-items:flex-start;gap:12px;padding:13px 16px;
    border-bottom:1px solid var(--border);
    animation:fadeLeft .28s ease both;
  }
  .hier-row:last-child{border-bottom:none;}
  @keyframes fadeLeft{from{opacity:0;transform:translateX(-6px)}to{opacity:1;transform:translateX(0)}}
  .hier-connector { display:flex;flex-direction:column;align-items:center;gap:3px;flex-shrink:0;width:18px;padding-top:4px; }
  .h-dot  { width:8px;height:8px;border-radius:50%;flex-shrink:0; }
  .lv-gold{ background:var(--gold);box-shadow:0 0 7px rgba(201,168,76,.5); }
  .lv-teal{ background:var(--teal);box-shadow:0 0 7px rgba(45,212,191,.4); }
  .lv-red { background:var(--red); box-shadow:0 0 7px rgba(217,79,61,.4); }
  .lv-gray{ background:var(--text-muted); }
  .h-line { flex:1;width:1px;background:var(--border);min-height:8px; }
  .h-content { flex:1; }
  .h-level { font-family:var(--font-mono);font-size:9px;text-transform:uppercase;letter-spacing:.12em;color:var(--text-muted);margin-bottom:3px; }
  .h-kh { font-family:var(--font-khmer);font-size:15px;color:var(--text); }
  .h-en { font-size:11px;color:var(--text-dim);margin-top:1px; }
  .h-code{ font-family:var(--font-mono);font-size:14px;color:var(--gold);letter-spacing:.08em;flex-shrink:0;padding-top:2px; }
  .full-addr-box { background:var(--surface);border:1px solid var(--border);border-radius:var(--radius);padding:16px; }
  .addr-label { font-family:var(--font-mono);font-size:9px;text-transform:uppercase;letter-spacing:.15em;color:var(--text-muted);margin-bottom:8px; }
  .addr-kh { font-family:var(--font-khmer);font-size:14px;color:var(--text-dim);line-height:1.6; }
  .addr-en { font-size:11px;color:var(--text-muted);margin-top:5px;line-height:1.5; }
`;