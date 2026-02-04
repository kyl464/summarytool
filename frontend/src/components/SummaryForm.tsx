'use client';

import React, { useState, useEffect } from 'react';
import { Level, Lesson, SummaryRequest } from '../types';
import { api } from '../lib/api';
import RegularFlow from './RegularFlow';
import SMAFlow from './SMAFlow';
import LessonSelect from './LessonSelect';

interface SummaryFormProps {
  onGenerated: (summary: string) => void;
}

export default function SummaryForm({ onGenerated }: SummaryFormProps) {
  const [loading, setLoading] = useState(false);
  const [nickname, setNickname] = useState('');
  const [level, setLevel] = useState<Level>('SD1');
  const [quarter, setQuarter] = useState(1);
  const [category, setCategory] = useState('');
  const [track, setTrack] = useState('');
  const [lessons, setLessons] = useState<Lesson[]>([]);
  const [selectedLessons, setSelectedLessons] = useState<number[]>([]);
  const [completionStatus, setCompletionStatus] = useState<'Completed' | 'In Progress'>('Completed');
  const [continueNextQuarter, setContinueNextQuarter] = useState(false);
  const [nextLessonId, setNextLessonId] = useState<number | null>(null);
  const [classMode, setClassMode] = useState<'Online' | 'Onsite'>('Onsite');
  const [showThematicPopup, setShowThematicPopup] = useState(false);
  const [nextCategory, setNextCategory] = useState('');
  const [nextTrack, setNextTrack] = useState('');
  const [isNextPathTBA, setIsNextPathTBA] = useState(false);
  const [nextLessonOptions, setNextLessonOptions] = useState<Lesson[]>([]);

  // Fetch lessons when level/flow data changes
  useEffect(() => {
    const fetchLessons = async () => {
      let data: Lesson[] = [];
      try {
        if (level === 'SMA') {
          if (category && track) {
            data = await api.getCurriculum({ level, category, track });
          } else {
            // Reset lessons if category/track is not fully selected
            setLessons([]);
            return;
          }
        } else {
          data = await api.getCurriculum({ level, quarter });
        }
        setLessons(data || []);
      } catch (error) {
        console.error("Failed to fetch curriculum:", error);
        setLessons([]);
      }
      setSelectedLessons([]);
      setNextLessonId(null);
    };
    fetchLessons();
  }, [level, quarter, category, track]);

  const hasMilestoneSelected = (lessons || [])
    .filter(l => selectedLessons.includes(l.id))
    .some(l => l.isMilestone);

  // Fetch lessons for the next path options if milestone reached
  useEffect(() => {
    const fetchNextOptions = async () => {
      // If no milestone or they didn't check "continue", next lessons are from CURRENT pool
      if (!continueNextQuarter || !hasMilestoneSelected) {
        setNextLessonOptions(lessons);
        return;
      }

      // If SMA and milestone reached and they picked a path
      if (level === 'SMA') {
        if (nextCategory && nextTrack && !isNextPathTBA) {
          try {
            const data = await api.getCurriculum({ level, category: nextCategory, track: nextTrack });
            setNextLessonOptions(data || []);
          } catch (error) {
            console.error("Failed to fetch next path options:", error);
            setNextLessonOptions([]);
          }
        } else {
          setNextLessonOptions([]);
          if (isNextPathTBA) {
            setNextLessonId(999);
          }
        }
      } else {
        // For regular levels, fetch the next quarter if we can
        try {
          const data = await api.getCurriculum({ level, quarter: quarter + 1 });
          if (data && data.length > 0) {
            setNextLessonOptions(data);
          } else {
            // Fallback if next quarter data doesn't exist
            setNextLessonOptions([]);
            setNextLessonId(999);
          }
        } catch (error) {
          setNextLessonOptions([]);
          setNextLessonId(999);
        }
      }
    };
    fetchNextOptions();
  }, [continueNextQuarter, hasMilestoneSelected, level, quarter, lessons, nextCategory, nextTrack, isNextPathTBA]);
  
  // Auto-select first lesson when options change due to milestone/path transition
  useEffect(() => {
    if (hasMilestoneSelected && continueNextQuarter && nextLessonOptions.length > 0) {
       const isValid = nextLessonOptions.some(l => l.id === nextLessonId) || nextLessonId === 999;
       if (!isValid) {
         setNextLessonId(nextLessonOptions[0].id);
       }
    }
  }, [nextLessonOptions, hasMilestoneSelected, continueNextQuarter, nextLessonId]);

  const handleLevelChange = (newLevel: Level) => {
    if (newLevel === 'Thematic') {
      setShowThematicPopup(true);
      setTimeout(() => setShowThematicPopup(false), 2000);
      return;
    }
    setLevel(newLevel);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!nickname || selectedLessons.length === 0 || !nextLessonId) {
      alert('Please fill in all required fields');
      return;
    }

    setLoading(true);
    try {
      const request: SummaryRequest = {
        nickname,
        level,
        quarter: level !== 'SMA' ? quarter : undefined,
        category: level === 'SMA' ? category : undefined,
        track: level === 'SMA' ? track : undefined,
        learnedLessons: selectedLessons,
        completionStatus,
        continueNextQuarter,
        nextLessonId: nextLessonId!,
        nextCategory: (level === 'SMA' && continueNextQuarter && !isNextPathTBA) ? nextCategory : undefined,
        nextTrack: (level === 'SMA' && continueNextQuarter && !isNextPathTBA) ? nextTrack : undefined,
        classMode
      };
      
      const response = await api.generateSummary(request);
      onGenerated(response.summary);
    } catch (error) {
      console.error(error);
      alert('Failed to generate summary');
    } finally {
      setLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="card p-10 max-w-4xl mx-auto shadow-2xl relative overflow-hidden">
      {/* Decorative Glow */}
      <div className="absolute top-0 right-0 -mr-16 -mt-16 w-64 h-64 bg-blue-600/10 rounded-full blur-3xl pointer-events-none"></div>
      
      <div className="section-title relative">
        <span className="w-10 h-10 rounded-xl bg-blue-500/20 text-blue-400 flex items-center justify-center text-lg font-black border border-blue-500/30">1</span>
        Student Information
      </div>
      
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mb-10">
        <div>
          <label className="form-label">Student Nickname</label>
          <input 
            type="text" 
            className="form-input" 
            placeholder="e.g. John" 
            value={nickname}
            onChange={(e) => setNickname(e.target.value)}
            required
          />
        </div>
        <div>
          <label className="form-label">Level</label>
          <select 
            className="form-input appearance-none" 
            value={level}
            onChange={(e) => handleLevelChange(e.target.value as Level)}
          >
            {['Kinder', 'SD1', 'SD2', 'SMP', 'Thematic', 'SMA'].map(l => (
              <option key={l} value={l} className="bg-slate-900">{l}</option>
            ))}
          </select>
        </div>
      </div>

      <div className="section-title relative">
        <span className="w-10 h-10 rounded-xl bg-blue-500/20 text-blue-400 flex items-center justify-center text-lg font-black border border-blue-500/30">2</span>
        Session Details
      </div>

      <div className="mb-8">
        {level === 'SMA' ? (
          <SMAFlow 
            category={category} 
            track={track} 
            onCategoryChange={(c) => {
              setCategory(c);
              setTrack(''); // Reset track when category changes
              setLessons([]); // Clear lessons immediately
            }} 
            onTrackChange={setTrack} 
          />
        ) : (
          <RegularFlow 
            level={level}
            quarter={quarter} 
            onQuarterChange={setQuarter} 
          />
        )}
      </div>

      <LessonSelect 
        label="Materials Learned Today" 
        lessons={lessons} 
        selectedIds={selectedLessons} 
        onChange={setSelectedLessons} 
      />

      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mb-10">
        <div>
          <label className="form-label">Completion Status</label>
          <div className="flex gap-3">
            {['Completed', 'In Progress'].map((status) => (
              <button
                key={status}
                type="button"
                onClick={() => setCompletionStatus(status as any)}
                className={`
                  flex-1 py-3 rounded-xl border-2 text-xs font-black uppercase tracking-widest transition-all duration-300
                  ${completionStatus === status 
                    ? 'bg-blue-600 border-blue-600 text-white shadow-[0_0_20px_rgba(37,99,235,0.3)]' 
                    : 'bg-slate-900/50 border-slate-700 text-slate-400 hover:border-slate-500 hover:text-slate-200'}
                `}
              >
                {status}
              </button>
            ))}
          </div>
        </div>
        <div>
          <label className="form-label">Class Mode</label>
          <div className="flex gap-3">
            {['Onsite', 'Online'].map((mode) => (
              <button
                key={mode}
                type="button"
                onClick={() => setClassMode(mode as any)}
                className={`
                  flex-1 py-3 rounded-xl border-2 text-xs font-black uppercase tracking-widest transition-all duration-300
                  ${classMode === mode 
                    ? 'bg-blue-600 border-blue-600 text-white shadow-[0_0_20px_rgba(37,99,235,0.3)]' 
                    : 'bg-slate-900/50 border-slate-700 text-slate-400 hover:border-slate-500 hover:text-slate-200'}
                `}
              >
                {mode}
              </button>
            ))}
          </div>
        </div>
      </div>

      {hasMilestoneSelected && (
        <div className="mb-10 fade-in space-y-4">
          <div 
            className="p-6 bg-amber-500/10 border-2 border-amber-500/30 rounded-2xl flex items-center gap-4 group cursor-pointer" 
            onClick={() => setContinueNextQuarter(!continueNextQuarter)}
          >
            <div className={`
              w-6 h-6 rounded-md border-2 flex items-center justify-center transition-all duration-300
              ${continueNextQuarter ? 'bg-amber-500 border-amber-500' : 'bg-transparent border-amber-500/50'}
            `}>
              {continueNextQuarter && (
                <svg className="w-4 h-4 text-slate-900" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="4" d="M5 13l4 4L19 7" />
                </svg>
              )}
            </div>
            <label className="font-black text-amber-500 cursor-pointer uppercase tracking-wider text-sm">
              Milestone reached! {level === 'SMA' ? 'Proceed to another Category/Track?' : 'Continue to next quarter material?'}
            </label>
          </div>

          {level === 'SMA' && continueNextQuarter && (
            <div className="p-6 bg-slate-800/50 border-2 border-slate-700 rounded-2xl space-y-6 fade-in">
              <div className="flex items-center gap-3 cursor-pointer" onClick={() => setIsNextPathTBA(!isNextPathTBA)}>
                <div className={`
                  w-5 h-5 rounded border-2 flex items-center justify-center transition-all duration-300
                  ${isNextPathTBA ? 'bg-blue-500 border-blue-500' : 'bg-transparent border-slate-500'}
                `}>
                  {isNextPathTBA && <div className="w-2 h-2 bg-white rounded-full"></div>}
                </div>
                <span className="text-sm font-bold text-slate-300 uppercase tracking-wider">Next path not yet chosen (TBA)</span>
              </div>

              {!isNextPathTBA && (
                <SMAFlow 
                  category={nextCategory} 
                  track={nextTrack} 
                  onCategoryChange={(c) => {
                    setNextCategory(c);
                    setNextTrack('');
                  }} 
                  onTrackChange={setNextTrack} 
                />
              )}
            </div>
          )}
        </div>
      )}

      <div className="section-title relative">
        <span className="w-10 h-10 rounded-xl bg-blue-500/20 text-blue-400 flex items-center justify-center text-lg font-black border border-blue-500/30">3</span>
        Plan for Next Session
      </div>

      <div className="mb-12">
        <label className="form-label">Next Lesson Material</label>
        <select 
          className="form-input appearance-none"
          value={nextLessonId || ''}
          onChange={(e) => setNextLessonId(Number(e.target.value))}
          required
        >
          <option value="" className="bg-slate-900">Select Next Lesson</option>
          
          {level === 'SMA' && continueNextQuarter && isNextPathTBA ? (
            <option value="999" className="bg-slate-900">New Category - To Be Determined (TBA)</option>
          ) : (
            <>
              {nextLessonOptions.map(l => (
                <option key={l.id} value={l.id} className="bg-slate-900">{l.name}</option>
              ))}
              
              {/* Default fallback and "Introductory" options */}
              {(nextLessonOptions.length === 0 || (level !== 'SMA' && continueNextQuarter)) && (
                <option value="999" className="bg-slate-900">
                  {level === 'SMA' ? "Next Path Introductory Lesson" : "Next Quarter Introductory Lesson"}
                </option>
              )}
            </>
          )}
        </select>
      </div>

      <button 
        type="submit" 
        className="btn-primary w-full py-5 text-lg uppercase tracking-[0.2em] flex items-center justify-center gap-4 group"
        disabled={loading}
      >
        {loading ? (
          <>
            <div className="spinner border-blue-200/30 border-l-white"></div>
            Generating Summary...
          </>
        ) : (
          <>
            <svg className="w-6 h-6 transition-transform duration-300 group-hover:rotate-12" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
            </svg>
            Generate Summary
          </>
        )}
      </button>

      {/* Coming Soon Popup */}
      {showThematicPopup && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950/80 backdrop-blur-sm fade-in">
          <div className="bg-slate-900 border-2 border-blue-500/30 p-12 rounded-3xl shadow-[0_0_50px_rgba(59,130,246,0.3)] text-center scale-up relative overflow-hidden">
            <div className="absolute top-0 left-0 w-full h-1 bg-gradient-to-r from-transparent via-blue-500 to-transparent animate-pulse"></div>
            <div className="w-20 h-20 bg-blue-500/10 rounded-2xl flex items-center justify-center mx-auto mb-6 border border-blue-500/20">
               <svg className="w-10 h-10 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                 <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
               </svg>
            </div>
            <h3 className="text-3xl font-black text-white mb-2 tracking-tight">Thematic Level</h3>
            <p className="text-blue-400 font-bold uppercase tracking-[0.2em] text-sm italic">Coming Soon</p>
          </div>
        </div>
      )}
    </form>
  );
}
