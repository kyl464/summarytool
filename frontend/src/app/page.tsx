'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import SummaryForm from '@/components/SummaryForm';
import SummaryDisplay from '@/components/SummaryDisplay';

export default function Home() {
  const [generatedSummary, setGeneratedSummary] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const router = useRouter();

  useEffect(() => {
    // Check if user is authenticated with 7-day persistence
    const authSession = localStorage.getItem('auth_session');

    if (!authSession) {
      router.push('/login');
      return;
    }

    try {
      const { isAuthenticated, expiresAt } = JSON.parse(authSession);
      const isExpired = new Date().getTime() > expiresAt;

      if (!isAuthenticated || isExpired) {
        localStorage.removeItem('auth_session');
        router.push('/login');
      } else {
        setIsLoading(false);
      }
    } catch (err) {
      localStorage.removeItem('auth_session');
      router.push('/login');
    }
  }, [router]);

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="w-8 h-8 border-4 border-blue-500/30 border-t-blue-500 rounded-full animate-spin"></div>
      </div>
    );
  }

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
      <div className="mt-20 text-center text-sm text-gray-500 font-medium">
        &copy; {new Date().getFullYear()} Teacher Summary Tool • Built by Luvky
      </div>
    </main>
  );
}
