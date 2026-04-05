import React, { useState, useEffect, useRef } from 'react';

const API_URL = 'http://localhost:5000/api/postal';

export default function PostalCodeSearch() {
  const [searchQuery, setSearchQuery] = useState('');
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(false);
  const [selectedCode, setSelectedCode] = useState(null);
  const [language, setLanguage] = useState('en');
  const searchTimeoutRef = useRef(null);

  useEffect(() => {
    if (searchQuery.trim().length === 0) {
      setResults([]);
      return;
    }

    if (searchTimeoutRef.current) {
      clearTimeout(searchTimeoutRef.current);
    }

    searchTimeoutRef.current = setTimeout(() => {
      searchPostalCodes(searchQuery);
    }, 300);

    return () => {
      if (searchTimeoutRef.current) {
        clearTimeout(searchTimeoutRef.current);
      }
    };
  }, [searchQuery]);

  const searchPostalCodes = async (query) => {
    if (!query.trim()) return;

    setLoading(true);
    try {
      const response = await fetch(`${API_URL}/search?q=${encodeURIComponent(query)}`);
      const data = await response.json();
      setResults(data);
    } catch (error) {
      console.error('Search error:', error);
      setResults([]);
    } finally {
      setLoading(false);
    }
  };

  const copyToClipboard = (code) => {
    navigator.clipboard.writeText(code);
    setSelectedCode(code);
    setTimeout(() => setSelectedCode(null), 2000);
  };

  const getDisplayText = (result, field) => {
    const kmField = `${field}_km`;
    const enField = `${field}_en`;
    return language === 'km' ? (result[kmField] || result[enField] || '') : (result[enField] || result[kmField] || '');
  };

  const hasData = (result, field) => {
    return result[`${field}_en`] || result[`${field}_km`];
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100">
      <div className="container mx-auto px-4 py-8 max-w-4xl">
        {/* Header */}
        <div className="text-center mb-8">
          <h1 className="text-4xl font-bold text-gray-800 mb-2">
            {language === 'km' ? 'ស្វែងរកលេខប្រៃសណីយ៍' : 'Cambodia Postal Code'}
          </h1>
          <p className="text-gray-600">
            {language === 'km' ? 'ស្វែងរកលេខប្រៃសណីយ៍យ៉ាងរហ័ស' : 'Fast & Simple Postal Code Search'}
          </p>
        </div>

        {/* Language Toggle */}
        <div className="flex justify-center mb-6">
          <div className="bg-white rounded-full p-1 shadow-sm inline-flex">
            <button
              onClick={() => setLanguage('en')}
              className={`px-6 py-2 rounded-full transition-all ${language === 'en'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-gray-600 hover:text-gray-800'
                }`}
            >
              English
            </button>
            <button
              onClick={() => setLanguage('km')}
              className={`px-6 py-2 rounded-full transition-all ${language === 'km'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-gray-600 hover:text-gray-800'
                }`}
            >
              ខ្មែរ
            </button>
          </div>
        </div>

        {/* Search Box */}
        <div className="bg-white rounded-2xl shadow-lg p-6 mb-6">
          <div className="relative">
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder={
                language === 'km'
                  ? 'វាយបញ្ចូលខេត្ត ស្រុក ឬលេខប្រៃសណីយ៍...'
                  : 'Type province, district, or postal code...'
              }
              className="w-full px-6 py-4 text-lg border-2 border-gray-200 rounded-xl focus:outline-none focus:border-indigo-500 transition-colors"
            />
            {loading && (
              <div className="absolute right-4 top-1/2 transform -translate-y-1/2">
                <div className="animate-spin h-6 w-6 border-3 border-indigo-500 border-t-transparent rounded-full"></div>
              </div>
            )}
          </div>

          {searchQuery && (
            <div className="mt-2 text-sm text-gray-500 px-2">
              {results.length} {language === 'km' ? 'លទ្ធផល' : 'results found'}
            </div>
          )}
        </div>

        {/* Results */}
        <div className="space-y-3">
          {results.map((result) => (
            <div
              key={result.id}
              className="bg-white rounded-xl shadow-md hover:shadow-lg transition-all p-5 cursor-pointer border-l-4 border-indigo-500"
              onClick={() => copyToClipboard(result.postal_code)}
            >
              <div className="flex items-start justify-between">
                <div className="flex-1">
                  <div className="flex items-center gap-3 mb-2">
                    <span className="text-2xl font-bold text-indigo-600">
                      {result.postal_code}
                    </span>
                    {selectedCode === result.postal_code && (
                      <span className="text-sm text-green-600 font-medium">
                        ✓ {language === 'km' ? 'ចម្លង!' : 'Copied!'}
                      </span>
                    )}
                  </div>

                  <div className="space-y-1 text-gray-700">
                    {hasData(result, 'province') && (
                      <div className="flex items-center gap-2">
                        <span className="text-gray-400">📍</span>
                        <span className="font-medium">
                          {getDisplayText(result, 'province')}
                        </span>
                      </div>
                    )}

                    {hasData(result, 'district') && (
                      <div className="flex items-center gap-2 text-sm">
                        <span className="text-gray-400">└</span>
                        <span>{getDisplayText(result, 'district')}</span>
                      </div>
                    )}

                    {hasData(result, 'commune') && (
                      <div className="flex items-center gap-2 text-sm text-gray-600">
                        <span className="text-gray-400 ml-2">└</span>
                        <span>{getDisplayText(result, 'commune')}</span>
                      </div>
                    )}
                  </div>
                </div>

                <div className="text-gray-400 hover:text-indigo-600 transition-colors">
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                  </svg>
                </div>
              </div>
            </div>
          ))}

          {searchQuery && !loading && results.length === 0 && (
            <div className="text-center py-12 text-gray-500">
              <svg className="w-16 h-16 mx-auto mb-4 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
              </svg>
              <p className="text-lg">
                {language === 'km' ? 'រកមិនឃើញលទ្ធផល' : 'No results found'}
              </p>
              <p className="text-sm mt-2">
                {language === 'km' ? 'សូមព្យាយាមស្វែងរកម្តងទៀត' : 'Try a different search term'}
              </p>
            </div>
          )}
        </div>

        {/* Footer Info */}
        {!searchQuery && (
          <div className="mt-12 text-center text-gray-500 text-sm">
            <p>{language === 'km' ? 'ចុចលើលទ្ធផលដើម្បីចម្លងលេខប្រៃសណីយ៍' : 'Click on any result to copy postal code'}</p>
          </div>
        )}
      </div>
    </div>
  );
}