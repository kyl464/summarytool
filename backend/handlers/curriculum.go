package handlers

import (
	"net/http"
	"strconv"

	"teacher-summary-api/database"
	"teacher-summary-api/models"

	"github.com/gin-gonic/gin"
)

// GetLevels returns all available levels
func GetLevels(c *gin.Context) {
	levels := []string{"Kinder", "SD1", "SD2", "SMP", "SMA", "Thematic"}
	c.JSON(http.StatusOK, levels)
}

// GetRegularCurriculum returns lessons for regular (non-SMA) levels
func GetRegularCurriculum(c *gin.Context) {
	level := c.Query("level")
	quarterStr := c.Query("quarter")

	if level == "" || quarterStr == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "level and quarter are required"})
		return
	}

	quarter, err := strconv.Atoi(quarterStr)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid quarter"})
		return
	}

	rows, err := database.DB.Query(`
		SELECT id, level, quarter, lesson_order, lesson_name, description, is_milestone 
		FROM curriculum_regular 
		WHERE level = $1 AND quarter = $2 
		ORDER BY lesson_order
	`, level, quarter)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch curriculum"})
		return
	}
	defer rows.Close()

	var lessons []models.Lesson
	for rows.Next() {
		var l models.Lesson
		err := rows.Scan(&l.ID, &l.Level, &l.Quarter, &l.LessonOrder, &l.LessonName, &l.Description, &l.IsMilestone)
		if err != nil {
			continue
		}
		lessons = append(lessons, l)
	}

	c.JSON(http.StatusOK, lessons)
}

// GetSMACurriculum returns lessons for SMA level
func GetSMACurriculum(c *gin.Context) {
	category := c.Query("category")
	track := c.Query("track")

	if category == "" || track == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "category and track are required"})
		return
	}

	rows, err := database.DB.Query(`
		SELECT id, category, track, lesson_order, lesson_name, description, is_milestone 
		FROM curriculum_sma 
		WHERE category = $1 AND track = $2 
		ORDER BY lesson_order
	`, category, track)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch curriculum"})
		return
	}
	defer rows.Close()

	var lessons []models.Lesson
	for rows.Next() {
		var l models.Lesson
		l.Level = "SMA"
		err := rows.Scan(&l.ID, &l.Category, &l.Track, &l.LessonOrder, &l.LessonName, &l.Description, &l.IsMilestone)
		if err != nil {
			continue
		}
		lessons = append(lessons, l)
	}

	c.JSON(http.StatusOK, lessons)
}

// GetSMACategories returns all SMA categories
func GetSMACategories(c *gin.Context) {
	rows, err := database.DB.Query(`SELECT DISTINCT category FROM curriculum_sma ORDER BY category`)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch categories"})
		return
	}
	defer rows.Close()

	categories := []string{}
	for rows.Next() {
		var cat string
		if err := rows.Scan(&cat); err == nil {
			categories = append(categories, cat)
		}
	}

	c.JSON(http.StatusOK, categories)
}

// GetSMATracks returns tracks for a given category
func GetSMATracks(c *gin.Context) {
	category := c.Query("category")
	if category == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "category is required"})
		return
	}

	rows, err := database.DB.Query(`SELECT DISTINCT track FROM curriculum_sma WHERE category = $1 ORDER BY track`, category)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to fetch tracks"})
		return
	}
	defer rows.Close()

	tracks := []string{}
	for rows.Next() {
		var t string
		if err := rows.Scan(&t); err == nil {
			tracks = append(tracks, t)
		}
	}

	c.JSON(http.StatusOK, tracks)
}
