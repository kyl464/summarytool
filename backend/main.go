package main

import (
	"log"

	"teacher-summary-api/config"
	"teacher-summary-api/database"
	"teacher-summary-api/handlers"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func main() {
	// Load configuration
	cfg := config.Load()

	// Connect to database
	if err := database.Connect(cfg.DatabaseURL); err != nil {
		log.Fatalf("Failed to connect to database: %v", err)
	}
	defer database.Close()

	// Initialize Gemini service
	handlers.InitSummaryHandler(cfg.GeminiAPIKey)

	// Setup Gin router
	r := gin.Default()

	// CORS configuration
	r.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"http://localhost:3000", "*"},
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowHeaders:     []string{"Origin", "Content-Type", "Accept", "Authorization"},
		AllowCredentials: true,
	}))

	// API routes
	api := r.Group("/api")
	{
		// Auth
		api.POST("/login", handlers.Login)

		// Levels
		api.GET("/levels", handlers.GetLevels)

		// Regular curriculum
		api.GET("/curriculum/regular", handlers.GetRegularCurriculum)

		// SMA curriculum
		api.GET("/curriculum/sma", handlers.GetSMACurriculum)
		api.GET("/sma/categories", handlers.GetSMACategories)
		api.GET("/sma/tracks", handlers.GetSMATracks)

		// Summary generation
		api.POST("/generate-summary", handlers.GenerateSummary)
	}

	// Health check
	r.GET("/health", func(c *gin.Context) {
		c.JSON(200, gin.H{"status": "ok"})
	})

	log.Printf("🚀 Server starting on port %s", cfg.Port)
	if err := r.Run(":" + cfg.Port); err != nil {
		log.Fatalf("Failed to start server: %v", err)
	}
}
