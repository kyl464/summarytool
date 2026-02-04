package models

// Lesson represents a curriculum lesson
type Lesson struct {
	ID          int    `json:"id"`
	Level       string `json:"level"`
	Quarter     int    `json:"quarter,omitempty"`
	Category    string `json:"category,omitempty"`
	Track       string `json:"track,omitempty"`
	LessonOrder int    `json:"order"`
	LessonName  string `json:"name"`
	Description string `json:"description"`
	IsMilestone bool   `json:"isMilestone"`
}

// SummaryRequest is the request body for generating a summary
type SummaryRequest struct {
	Nickname            string `json:"nickname"`
	Level               string `json:"level"`
	Quarter             int    `json:"quarter,omitempty"`
	Category            string `json:"category,omitempty"`
	Track               string `json:"track,omitempty"`
	LearnedLessons      []int  `json:"learnedLessons"`
	CompletionStatus    string `json:"completionStatus"`
	ContinueNextQuarter bool   `json:"continueNextQuarter"`
	NextLessonID        int    `json:"nextLessonId"`
	NextCategory        string `json:"nextCategory,omitempty"`
	NextTrack           string `json:"nextTrack,omitempty"`
	ClassMode           string `json:"classMode"`
	CustomNextLesson    string `json:"customNextLesson,omitempty"`
}

// SummaryResponse is the response body containing the generated summary
type SummaryResponse struct {
	Summary string `json:"summary"`
}

// LevelInfo represents available levels
type LevelInfo struct {
	Levels []string `json:"levels"`
}

// CategoryInfo represents SMA categories
type CategoryInfo struct {
	Categories []string `json:"categories"`
}

// TrackInfo represents SMA tracks
type TrackInfo struct {
	Tracks []string `json:"tracks"`
}
