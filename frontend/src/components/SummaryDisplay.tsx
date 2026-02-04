'use client';

import React, { useState } from 'react';

interface SummaryDisplayProps {
  summary: string;
  onReset: () => void;
}

export default function SummaryDisplay({ summary, onReset }: SummaryDisplayProps) {
  const [copied, setCopied] = useState(false);

  const copyToClipboard = () => {
    navigator.clipboard.writeText(summary);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div className="fade-in max-w-2xl mx-auto">
      <div className="card shadow-lg border-blue-100 overflow-hidden">
        <div className="bg-blue-600 px-6 py-4 flex justify-between items-center rounded-t-2xl">
          <h2 className="text-white font-bold flex items-center gap-2">
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            Generated Summary
          </h2>
          <button 
            onClick={copyToClipboard}
            className={`
              flex items-center gap-2 px-3 py-1.5 rounded-md transition-all duration-200 text-sm font-medium
              ${copied ? 'bg-green-500 text-white' : 'bg-white/10 text-white hover:bg-white/20'}
            `}
          >
            {copied ? (
              <>
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M5 13l4 4L19 7" />
                </svg>
                Copied!
              </>
            ) : (
              <>
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M8 5H6a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2v-1M8 5a2 2 0 002 2h2a2 2 0 002-2M8 5a2 2 0 012-2h2a2 2 0 012 2m0 0h2a2 2 0 012 2v3m2 4H10m0 0l3-3m-3 3l3 3" />
                </svg>
                Copy Text
              </>
            )}
          </button>
        </div>
        <div className="p-8">
          <div className="bg-gray-50 rounded-xl p-6 border border-gray-100 text-gray-800 whitespace-pre-wrap leading-relaxed text-lg italic font-serif">
            {summary}
          </div>
          
          <div className="mt-8 flex justify-center">
            <button 
              onClick={onReset}
              className="px-6 py-3 text-blue-600 font-bold hover:text-blue-700 transition-colors flex items-center gap-2"
            >
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
              </svg>
              Create Another Summary
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
