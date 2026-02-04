'use client';

import React from 'react';
import { Lesson } from '../types';

interface LessonSelectProps {
  lessons: Lesson[];
  selectedIds: number[];
  onChange: (ids: number[]) => void;
  label: string;
  isMulti?: boolean;
}

export default function LessonSelect({ lessons, selectedIds, onChange, label, isMulti = true }: LessonSelectProps) {
  const toggleLesson = (id: number) => {
    if (isMulti) {
      if (selectedIds.includes(id)) {
        onChange(selectedIds.filter(i => i !== id));
      } else {
        onChange([...selectedIds, id]);
      }
    } else {
      onChange([id]);
    }
  };

  return (
    <div className="mb-6 fade-in">
      <label className="form-label">{label}</label>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
        {lessons.length === 0 ? (
          <p className="text-sm text-gray-500 italic">No lessons available for the selected criteria.</p>
        ) : (
          lessons.map((lesson) => {
            const isSelected = selectedIds.includes(lesson.id);
            return (
              <div
                key={lesson.id}
                onClick={() => toggleLesson(lesson.id)}
                className={`
                  p-4 rounded-xl border-2 cursor-pointer transition-all duration-300 flex items-start gap-4 group
                  ${isSelected 
                    ? 'border-blue-500 bg-blue-500/10 shadow-[0_0_15px_rgba(59,130,246,0.2)]' 
                    : 'border-slate-700/50 bg-slate-800/50 hover:border-slate-600 hover:bg-slate-800'}
                `}
              >
                <div className={`
                  mt-1 w-5 h-5 rounded-md border-2 flex items-center justify-center flex-shrink-0 transition-all duration-300
                  ${isSelected ? 'bg-blue-600 border-blue-600' : 'bg-transparent border-slate-600 group-hover:border-slate-500'}
                `}>
                  {isSelected && (
                    <svg className="w-3 h-3 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="4" d="M5 13l4 4L19 7" />
                    </svg>
                  )}
                </div>
                <div>
                  <div className="text-sm font-black text-white flex items-center gap-2">
                    {lesson.name}
                    {lesson.isMilestone && (
                      <span className="px-1.5 py-0.5 bg-amber-500/20 text-amber-500 text-[9px] uppercase tracking-widest rounded-full font-black border border-amber-500/30">
                        Milestone
                      </span>
                    )}
                  </div>
                  <div className="text-xs text-slate-400 mt-1.5 line-clamp-2 font-medium leading-relaxed group-hover:text-slate-300">
                    {lesson.description}
                  </div>
                </div>
              </div>
            );
          })
        )}
      </div>
    </div>
  );
}
