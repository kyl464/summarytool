package handlers

import (
	"net/http"

	"teacher-summary-api/database"
	"teacher-summary-api/models"
	"teacher-summary-api/services"

	"github.com/gin-gonic/gin"
)

var geminiService *services.GeminiService

func InitSummaryHandler(apiKey string) {
	geminiService = services.NewGeminiService(apiKey)
}

// GenerateSummary generates a summary using Gemini API
func GenerateSummary(c *gin.Context) {
	var req models.SummaryRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid request body"})
		return
	}

	// Fetch learned lessons
	lessonsLearned, err := fetchLessonsByIDs(req.LearnedLessons, req.Level)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch learned lessons"})
		return
	}

	// Fetch next lesson (skip if custom lesson is provided)
	var nextLesson models.Lesson
	if req.CustomNextLesson == "" {
		var err error
		nextLesson, err = fetchLessonByID(req.NextLessonID, req.Level)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch next lesson"})
			return
		}
	}

	// Generate summary using Gemini
	summary, err := geminiService.GenerateSummary(req, lessonsLearned, nextLesson)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to generate summary: " + err.Error()})
		return
	}

	c.JSON(http.StatusOK, models.SummaryResponse{Summary: summary})
}

func fetchLessonsByIDs(ids []int, level string) ([]models.Lesson, error) {
	var lessons []models.Lesson

	for _, id := range ids {
		lesson, err := fetchLessonByID(id, level)
		if err == nil {
			lessons = append(lessons, lesson)
		}
	}

	return lessons, nil
}

func fetchLessonByID(id int, level string) (models.Lesson, error) {
	var l models.Lesson

	if level == "SMA" {
		err := database.DB.QueryRow(`
			SELECT id, category, track, lesson_order, lesson_name, description 
			FROM curriculum_sma 
			WHERE id = $1
		`, id).Scan(&l.ID, &l.Category, &l.Track, &l.LessonOrder, &l.LessonName, &l.Description)
		if err != nil {
			return l, err
		}
		l.Level = "SMA"
	} else {
		err := database.DB.QueryRow(`
			SELECT id, level, quarter, lesson_order, lesson_name, description, is_milestone 
			FROM curriculum_regular 
			WHERE id = $1
		`, id).Scan(&l.ID, &l.Level, &l.Quarter, &l.LessonOrder, &l.LessonName, &l.Description, &l.IsMilestone)
		if err != nil {
			return l, err
		}
	}

	return l, nil
}
