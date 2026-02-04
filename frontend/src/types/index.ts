export type Level = 'Kinder' | 'SD1' | 'SD2' | 'SMP' | 'SMA' | 'Thematic';

export interface Lesson {
  id: number;
  name: string;
  description: string;
  order: number;
  isMilestone?: boolean;
}

export interface CurriculumRequest {
  level: Level;
  quarter?: number;
  category?: string;
  track?: string;
}

export interface SummaryRequest {
  nickname: string;
  level: Level;
  quarter?: number;
  category?: string;
  track?: string;
  learnedLessons: number[]; // Array of lesson IDs
  completionStatus: 'Completed' | 'In Progress';
  continueNextQuarter: boolean;
  nextLessonId: number;
  nextCategory?: string;
  nextTrack?: string;
  classMode: 'Online' | 'Onsite';
}

export interface SummaryResponse {
  summary: string;
}
