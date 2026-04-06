import React, { useEffect, useRef, useState } from 'react';
import L from 'leaflet';

const TILES = {
    dark: 'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png',
    satellite: 'https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
    // topo: 'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png',
};
const ATTR = {
    dark: '© CartoDB', satellite: '© Esri',
};

const goldIcon = L.divIcon({
    html: `<div style="width:14px;height:14px;background:radial-gradient(circle,#e8c96a 30%,#c9a84c 100%);border-radius:50%;border:2px solid #fff;box-shadow:0 0 10px rgba(201,168,76,.8)"></div>`,
    className: '', iconSize: [14, 14], iconAnchor: [7, 7],
});

export default function MapView({ selectedItem }) {
    const mapRef = useRef(null);
    const markerRef = useRef(null);
    const tileRef = useRef(null);
    const [style, setStyle] = useState('dark');
    const [overlay, setOverlay] = useState(null);

    // Init map once
    useEffect(() => {
        if (mapRef.current) return;
        mapRef.current = L.map('leaflet-map', {
            center: [12.5657, 104.9910], zoom: 7, zoomControl: false,
        });
        L.control.zoom({ position: 'topright' }).addTo(mapRef.current);
        tileRef.current = L.tileLayer(TILES.dark, { attribution: ATTR.dark, subdomains: 'abcd', maxZoom: 18 })
            .addTo(mapRef.current);
    }, []);

    // Swap tile layer
    useEffect(() => {
        if (!mapRef.current || !tileRef.current) return;
        mapRef.current.removeLayer(tileRef.current);
        tileRef.current = L.tileLayer(TILES[style], { attribution: ATTR[style], subdomains: 'abcd', maxZoom: 18 })
            .addTo(mapRef.current);
    }, [style]);

    // Pin location when selectedItem changes
    useEffect(() => {
        if (!selectedItem || !mapRef.current) return;
        const geocode = async () => {
            try {
                const q = encodeURIComponent((selectedItem.name_en || selectedItem.name_kh) + ', Cambodia');
                const res = await fetch(`https://nominatim.openstreetmap.org/search?q=${q}&format=json&limit=1`);
                const data = await res.json();
                if (!data.length) return;
                const { lat, lon } = data[0];
                if (markerRef.current) mapRef.current.removeLayer(markerRef.current);
                markerRef.current = L.marker([lat, lon], { icon: goldIcon })
                    .addTo(mapRef.current)
                    .bindPopup(`<div style="font-family:'Hanuman',serif">
            <div style="font-family:'DM Mono',monospace;font-size:18px;color:#c9a84c">${selectedItem.postal_code}</div>
            <div style="font-size:15px;margin-top:4px">${selectedItem.name_kh}</div>
            <div style="font-size:11px;color:rgba(240,237,232,.5)">${selectedItem.name_en}</div>
          </div>`)
                    .openPopup();
                const zoom = selectedItem.type === 'province' ? 9 : selectedItem.type === 'district' ? 11 : 13;
                mapRef.current.flyTo([lat, lon], zoom, { duration: 1.2 });
                setOverlay(selectedItem);
            } catch { }
        };
        geocode();
    }, [selectedItem]);

    return (
        <div className="map-panel">
            <div className="map-header">
                <div className="map-title"><span className="title-line" />Geospatial View</div>
                <div className="map-controls">
                    {['dark', 'satellite'].map((s) => (
                        <button key={s} className={`ctrl-btn${style === s ? ' active' : ''}`} onClick={() => setStyle(s)}>
                            {s.charAt(0).toUpperCase() + s.slice(1)}
                        </button>
                    ))}
                </div>
            </div>

            <div className="map-container">
                <div id="leaflet-map" />
                {overlay && (
                    <div className="map-overlay">
                        <div className="ov-postal">{overlay.postal_code}</div>
                        <div className="ov-kh">{overlay.name_kh}</div>
                        <div className="ov-en">{overlay.name_en}</div>
                        <div className="ov-type">{(overlay.type || '').toUpperCase()}</div>
                    </div>
                )}
            </div>

            <style>{mapStyle}</style>
        </div>
    );
}

const mapStyle = `
  .map-panel { display:flex;flex-direction:column;flex:1;padding:32px 0 32px 32px; }
  .map-header { display:flex;align-items:center;justify-content:space-between;margin-bottom:14px; }
  .map-title  { display:flex;align-items:center;gap:8px;font-family:var(--font-mono);font-size:10px;letter-spacing:.15em;text-transform:uppercase;color:var(--text-dim); }
  .title-line { width:16px;height:1px;background:var(--teal); }
  .map-controls { display:flex;gap:5px; }
  .ctrl-btn {
    background:var(--surface);border:1px solid var(--border);border-radius:7px;
    padding:6px 12px;font-family:var(--font-mono);font-size:9px;letter-spacing:.08em;
    text-transform:uppercase;color:var(--text-dim);cursor:pointer;transition:all .18s;
  }
  .ctrl-btn:hover,.ctrl-btn.active { background:var(--gold-dim);color:var(--gold);border-color:rgba(201,168,76,.3); }
  .map-container { flex:1;border-radius:14px;overflow:hidden;border:1px solid var(--border);position:relative;min-height:520px; }
  #leaflet-map  { width:100%;height:100%;min-height:520px; }
  .map-overlay  {
    position:absolute;bottom:20px;left:20px;
    background:rgba(10,10,15,.92);backdrop-filter:blur(12px);
    border:1px solid var(--border-md);border-radius:var(--radius);
    padding:14px 18px;z-index:500;max-width:260px;
    animation:slideUp .22s ease;
  }
  @keyframes slideUp { from{opacity:0;transform:translateY(6px)} to{opacity:1;transform:translateY(0)} }
  .ov-postal { font-family:var(--font-mono);font-size:26px;font-weight:500;color:var(--gold);letter-spacing:.08em;line-height:1; }
  .ov-kh     { font-family:var(--font-khmer);font-size:15px;color:var(--text);margin-top:5px; }
  .ov-en     { font-size:11px;color:var(--text-dim);margin-top:2px; }
  .ov-type   { font-family:var(--font-mono);font-size:9px;letter-spacing:.12em;color:var(--teal);margin-top:7px; }
`;