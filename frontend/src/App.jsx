import React, { useState, useEffect } from 'react';
import SearchBar from './components/SearchBar';
import ResultList from './components/ResultList';
import MapView from './components/MapView';
import ReverseLookup from './components/ReverseLookup';
import { useSearch } from './hooks/useSearch';
import { health } from './utils/api';

export default function App() {
  const [tab, setTab] = useState('search');
  const [selected, setSelected] = useState(null);
  const [statusText, setStatusText] = useState('● Connecting…');
  const [statusColor, setStatusColor] = useState('var(--text-muted)');
  const [isOffline, setIsOffline] = useState(!navigator.onLine);

  const { results, loading, tookMs, fromCache, runSearch } = useSearch();

  useEffect(() => {
    health()
      .then((d) => { setStatusText(`● Online · ${d.total_locations?.toLocaleString()} locations`); setStatusColor('var(--teal)'); })
      .catch(() => { setStatusText('● API Offline'); setStatusColor('var(--red)'); });
  }, []);

  useEffect(() => {
    const on = () => setIsOffline(false);
    const off = () => setIsOffline(true);
    window.addEventListener('online', on);
    window.addEventListener('offline', off);
    return () => { window.removeEventListener('online', on); window.removeEventListener('offline', off); };
  }, []);

  return (
    <div className="app-root">
      {isOffline && <div className="offline-bar">⚡ Offline Mode — Showing cached results</div>}

      <div className="app">
        {/* ── Header ── */}
        <header>
          <div className="logo-block">
            <div className="logo-icon">📮</div>
            <div className="logo-text">
              <h1>លេខកូដប្រៃសណីយ៍</h1>
              <p>Khmer Postal Code Search</p>
            </div>
          </div>
          <div className="status-badge" style={{ color: statusColor }}>{statusText}</div>
        </header>

        {/* ── Main Grid ── */}
        <div className="main-grid">
          {/* Left panel */}
          <div className="left-panel">
            <div className="tab-row">
              <button className={`tab-btn${tab === 'search' ? ' active' : ''}`} onClick={() => setTab('search')}>🔍 Search</button>
              <button className={`tab-btn${tab === 'reverse' ? ' active' : ''}`} onClick={() => setTab('reverse')}>🔄 Reverse</button>
            </div>

            {tab === 'search' && (
              <>
                <SearchBar
                  onSearch={runSearch}
                  results={results}
                  onSelect={(item) => setSelected(item)}
                  loading={loading}
                  tookMs={tookMs}
                  fromCache={fromCache}
                />
                <ResultList
                  results={results}
                  selectedCode={selected?.code}
                  onSelect={(item) => setSelected(item)}
                />
              </>
            )}

            {tab === 'reverse' && (
              <ReverseLookup onLocated={(item) => setSelected(item)} />
            )}
          </div>

          {/* Right panel — Map */}
          <MapView selectedItem={selected} />
        </div>
      </div>

      <style>{appStyle}</style>
    </div>
  );
}

const appStyle = `
  /* ── Ambient glows ── */
  .app-root { position:relative; min-height:100vh; }
  .app-root::before,.app-root::after {
    content:'';position:fixed;border-radius:50%;filter:blur(120px);pointer-events:none;z-index:0;
  }
  .app-root::before {
    width:600px;height:600px;
    background:radial-gradient(circle,rgba(201,168,76,.07) 0%,transparent 70%);
    top:-200px;left:-100px;animation:drift1 22s ease-in-out infinite;
  }
  .app-root::after {
    width:400px;height:400px;
    background:radial-gradient(circle,rgba(45,212,191,.05) 0%,transparent 70%);
    bottom:0;right:-80px;animation:drift2 28s ease-in-out infinite;
  }
  @keyframes drift1{0%,100%{transform:translate(0,0)}50%{transform:translate(80px,55px)}}
  @keyframes drift2{0%,100%{transform:translate(0,0)}50%{transform:translate(-55px,-35px)}}

  .offline-bar {
    background:rgba(217,79,61,.12);border-bottom:1px solid rgba(217,79,61,.18);
    text-align:center;padding:6px;
    font-family:var(--font-mono);font-size:10px;letter-spacing:.1em;color:var(--red);
    position:relative;z-index:10;
  }

  .app { position:relative;z-index:1;max-width:1400px;margin:0 auto;padding:0 24px; }

  header {
    padding:40px 0 32px;display:flex;align-items:center;
    justify-content:space-between;border-bottom:1px solid var(--border);
  }
  .logo-block { display:flex;align-items:center;gap:16px; }
  .logo-icon  {
    width:50px;height:50px;
    background:linear-gradient(135deg,var(--gold) 0%,#8b6914 100%);
    border-radius:13px;display:flex;align-items:center;justify-content:center;
    font-size:23px;flex-shrink:0;
    box-shadow:0 0 36px rgba(201,168,76,.28),inset 0 1px 0 rgba(255,255,255,.18);
  }
  .logo-text h1 {
    font-family:var(--font-khmer);font-size:21px;font-weight:900;
    color:var(--gold-light);line-height:1.1;letter-spacing:-.02em;
  }
  .logo-text p {
    font-family:var(--font-mono);font-size:10px;
    color:var(--text-dim);letter-spacing:.12em;text-transform:uppercase;margin-top:2px;
  }
  .status-badge {
    font-family:var(--font-mono);font-size:10px;letter-spacing:.1em;text-transform:uppercase;
    padding:6px 14px;border:1px solid var(--border);border-radius:100px;
    background:var(--surface);transition:color .4s;
  }

  .main-grid {
    display:grid;grid-template-columns:400px 1fr;
    min-height:calc(100vh - 148px);
  }

  .left-panel {
    border-right:1px solid var(--border);
    display:flex;flex-direction:column;
    padding:28px 32px 28px 0;overflow:hidden;
  }

  .tab-row {
    display:flex;gap:4px;background:var(--surface);
    border:1px solid var(--border);border-radius:10px;
    padding:4px;margin-bottom:22px;flex-shrink:0;
  }
  .tab-btn {
    flex:1;background:none;border:none;border-radius:7px;
    padding:9px 0;font-family:var(--font-mono);font-size:10px;
    letter-spacing:.1em;text-transform:uppercase;
    color:var(--text-dim);cursor:pointer;transition:all .18s;
  }
  .tab-btn.active {
    background:var(--gold-dim);color:var(--gold-light);
    border:1px solid rgba(201,168,76,.22);
  }

  @media(max-width:960px) {
    .main-grid { grid-template-columns:1fr; }
    .left-panel { border-right:none;border-bottom:1px solid var(--border);padding:24px 0; }
    header { flex-direction:column;gap:14px;align-items:flex-start; }
  }
`;