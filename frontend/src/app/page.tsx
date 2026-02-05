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
        <h1 className="text-5xl font-black text-white tracking-tighter sm:text-7xl mb-6">
          Teacher <span className="text-transparent bg-clip-text bg-gradient-to-r from-blue-400 to-blue-600">Summary</span> Tool
        </h1>
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
