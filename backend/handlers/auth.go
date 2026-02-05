package handlers

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
)

type LoginRequest struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

type LoginResponse struct {
	Success bool   `json:"success"`
	Message string `json:"message"`
}

func Login(c *gin.Context) {
	var req LoginRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, LoginResponse{
			Success: false,
			Message: "Invalid request",
		})
		return
	}

	// Get credentials from environment variables
	expectedUsername := os.Getenv("AUTH_USERNAME")
	expectedPassword := os.Getenv("AUTH_PASSWORD")

	// Validate credentials
	if req.Username == expectedUsername && req.Password == expectedPassword {
		c.JSON(http.StatusOK, LoginResponse{
			Success: true,
			Message: "Login successful",
		})
	} else {
		c.JSON(http.StatusUnauthorized, LoginResponse{
			Success: false,
			Message: "Invalid username or password",
		})
	}
}
