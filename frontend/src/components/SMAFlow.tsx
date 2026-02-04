'use client';

import React, { useEffect, useState } from 'react';
import { api } from '../lib/api';

interface SMAFlowProps {
  category: string;
  track: string;
  onCategoryChange: (c: string) => void;
  onTrackChange: (t: string) => void;
}

export default function SMAFlow({ category, track, onCategoryChange, onTrackChange }: SMAFlowProps) {
  const [categories, setCategories] = useState<string[]>([]);
  const [tracks, setTracks] = useState<string[]>([]);

  useEffect(() => {
    api.getSMACategories().then(setCategories);
  }, []);

  useEffect(() => {
    if (category) {
      api.getSMATracks(category).then(setTracks);
    }
  }, [category]);

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6 fade-in">
      <div>
        <label className="form-label">Category</label>
        <select 
          className="form-input appearance-none"
          value={category}
          onChange={(e) => onCategoryChange(e.target.value)}
        >
          <option value="" className="bg-slate-900">Select Category</option>
          {categories.map(c => <option key={c} value={c} className="bg-slate-900">{c}</option>)}
        </select>
      </div>
      <div>
        <label className="form-label">Track</label>
        <select 
          className="form-input appearance-none"
          value={track}
          onChange={(e) => onTrackChange(e.target.value)}
          disabled={!category}
        >
          <option value="" className="bg-slate-900">Select Track</option>
          {tracks.map(t => <option key={t} value={t} className="bg-slate-900">{t}</option>)}
        </select>
      </div>
    </div>
  );
}
