import { Level, Lesson, CurriculumRequest, SummaryRequest, SummaryResponse } from '../types';

// This will be replaced with actual API calls to the Go backend later
export const API_BASE_URL = process.env.NEXT_PUBLIC_API_BASE_URL || 'http://localhost:8080/api';

async function fetchJson<T>(endpoint: string, options?: RequestInit): Promise<T> {
  const response = await fetch(`${API_BASE_URL}${endpoint}`, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...options?.headers,
    },
  });

  if (!response.ok) {
    const error = await response.json().catch(() => ({ error: 'Unknown error' }));
    throw new Error(error.error || 'Failed to fetch');
  }

  return response.json();
}

export const api = {
  getLevels: async (): Promise<Level[]> => {
    return fetchJson<Level[]>('/levels');
  },

  getCurriculum: async (req: CurriculumRequest): Promise<Lesson[]> => {
    const params = new URLSearchParams();
    if (req.level) params.append('level', req.level);
    if (req.quarter) params.append('quarter', req.quarter.toString());
    if (req.category) params.append('category', req.category);
    if (req.track) params.append('track', req.track);

    const endpoint = req.level === 'SMA' 
      ? `/curriculum/sma?${params.toString()}`
      : `/curriculum/regular?${params.toString()}`;

    return fetchJson<Lesson[]>(endpoint);
  },

  getSMACategories: async (): Promise<string[]> => {
    return fetchJson<string[]>('/sma/categories');
  },

  getSMATracks: async (category: string): Promise<string[]> => {
    return fetchJson<string[]>(`/sma/tracks?category=${category}`);
  },

  generateSummary: async (req: SummaryRequest): Promise<SummaryResponse> => {
    return fetchJson<SummaryResponse>('/generate-summary', {
      method: 'POST',
      body: JSON.stringify(req),
    });
  }
};

