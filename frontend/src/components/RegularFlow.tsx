import React from 'react';
import { Level } from '../types';

interface RegularFlowProps {
  level: Level;
  quarter: number;
  onQuarterChange: (q: number) => void;
}

export default function RegularFlow({ level, quarter, onQuarterChange }: RegularFlowProps) {
  // Determine number of quarters based on level
  const getQuarterCount = () => {
    switch (level) {
      case 'SD1': return 12;
      case 'SD2': return 13;
      case 'SMP': return 12;
      case 'Thematic': return 4; // Default for now
      case 'Kinder':
      default: return 4;
    }
  };

  const quarterCount = getQuarterCount();
  const quarters = Array.from({ length: quarterCount }, (_, i) => i + 1);

  return (
    <div className="mb-6 fade-in">
      <label className="form-label">Select Quarter</label>
      <div className="relative">
        <select
          value={quarter}
          onChange={(e) => onQuarterChange(Number(e.target.value))}
          className="form-input appearance-none cursor-pointer pr-10"
        >
          {quarters.map((q) => (
            <option key={q} value={q} className="bg-slate-900">
              Quarter {q}
            </option>
          ))}
        </select>
        <div className="absolute inset-y-0 right-0 flex items-center px-4 pointer-events-none text-blue-400">
          <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M19 9l-7 7-7-7" />
          </svg>
        </div>
      </div>
    </div>
  );
}
