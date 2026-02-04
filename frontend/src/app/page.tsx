'use client';

import { useState } from 'react';
import SummaryForm from '@/components/SummaryForm';
import SummaryDisplay from '@/components/SummaryDisplay';

export default function Home() {
  const [generatedSummary, setGeneratedSummary] = useState<string | null>(null);

  return (
    <main className="min-h-screen py-20 px-4 sm:px-6 lg:px-8 relative overflow-hidden">
      {/* Background blobs for premium feel */}
      <div className="absolute top-0 left-1/4 w-96 h-96 bg-blue-600/10 rounded-full blur-[120px] pointer-events-none"></div>
      <div className="absolute bottom-1/4 right-1/4 w-96 h-96 bg-blue-500/10 rounded-full blur-[120px] pointer-events-none"></div>

      {/* Header Section */}
      <div className="max-w-4xl mx-auto text-center mb-16 fade-in relative">
        <div className="inline-flex items-center justify-center p-4 bg-blue-500/10 rounded-3xl mb-6 border border-blue-500/20 shadow-[0_0_30px_rgba(59,130,246,0.1)]">
          <svg className="w-10 h-10 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
          </svg>
        </div>
        <h1 className="text-5xl font-black text-white tracking-tighter sm:text-7xl mb-6">
          Teacher <span className="text-transparent bg-clip-text bg-gradient-to-r from-blue-400 to-blue-600">Summary</span> Tool
        </h1>
        <p className="mt-6 text-xl text-slate-400 max-w-2xl mx-auto font-medium leading-relaxed">
          <span className="block mt-2 text-blue-500/80 font-bold uppercase tracking-widest text-sm">Powered by Gemini 2.5 Flash Lite</span>
        </p>
      </div>

      <div className="relative">
        {!generatedSummary ? (
          <SummaryForm onGenerated={setGeneratedSummary} />
        ) : (
          <SummaryDisplay 
            summary={generatedSummary} 
            onReset={() => setGeneratedSummary(null)} 
          />
        )}
      </div>

      {/* Footer Decoration */}
      <div className="mt-20 text-center text-sm text-gray-400 font-medium">
        &copy; {new Date().getFullYear()} Teacher Summary Tool • Built by Luvky
      </div>
    </main>
  );
}
