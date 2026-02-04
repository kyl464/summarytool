package services

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"time"

	"teacher-summary-api/models"
)

type GeminiService struct {
	APIKey string
}

func NewGeminiService(apiKey string) *GeminiService {
	return &GeminiService{APIKey: apiKey}
}

type geminiRequest struct {
	Contents         []geminiContent        `json:"contents"`
	GenerationConfig geminiGenerationConfig `json:"generationConfig"`
}

type geminiContent struct {
	Parts []geminiPart `json:"parts"`
}

type geminiPart struct {
	Text string `json:"text"`
}

type geminiGenerationConfig struct {
	Temperature     float64 `json:"temperature"`
	TopP            float64 `json:"topP"`
	TopK            int     `json:"topK"`
	MaxOutputTokens int     `json:"maxOutputTokens"`
}

type geminiResponse struct {
	Candidates []struct {
		Content struct {
			Parts []struct {
				Text string `json:"text"`
			} `json:"parts"`
		} `json:"content"`
	} `json:"candidates"`
}

func (g *GeminiService) GenerateSummary(req models.SummaryRequest, lessonsLearned []models.Lesson, nextLesson models.Lesson) (string, error) {
	prompt := buildPrompt(req, lessonsLearned, nextLesson)

	geminiReq := geminiRequest{
		Contents: []geminiContent{
			{
				Parts: []geminiPart{
					{Text: prompt},
				},
			},
		},
		GenerationConfig: geminiGenerationConfig{
			Temperature:     0.9,
			TopP:            0.95,
			TopK:            40,
			MaxOutputTokens: 1024,
		},
	}

	jsonData, err := json.Marshal(geminiReq)
	if err != nil {
		return "", fmt.Errorf("failed to marshal request: %w", err)
	}

	url := fmt.Sprintf("https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-lite:generateContent?key=%s", g.APIKey)

	// Create context with 10 second timeout
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	httpReq, err := http.NewRequestWithContext(ctx, "POST", url, bytes.NewBuffer(jsonData))
	if err != nil {
		return "", fmt.Errorf("failed to create request: %w", err)
	}
	httpReq.Header.Set("Content-Type", "application/json")

	client := &http.Client{}
	resp, err := client.Do(httpReq)
	if err != nil {
		if ctx.Err() == context.DeadlineExceeded {
			return "", fmt.Errorf("request timed out after 10 seconds")
		}
		return "", fmt.Errorf("failed to call Gemini API: %w", err)
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return "", fmt.Errorf("failed to read response: %w", err)
	}

	if resp.StatusCode != http.StatusOK {
		return "", fmt.Errorf("Gemini API error: %s", string(body))
	}

	var geminiResp geminiResponse
	if err := json.Unmarshal(body, &geminiResp); err != nil {
		return "", fmt.Errorf("failed to unmarshal response: %w", err)
	}

	if len(geminiResp.Candidates) == 0 || len(geminiResp.Candidates[0].Content.Parts) == 0 {
		return "", fmt.Errorf("no content in response")
	}

	return geminiResp.Candidates[0].Content.Parts[0].Text, nil
}

func buildPrompt(req models.SummaryRequest, lessonsLearned []models.Lesson, nextLesson models.Lesson) string {
	var lessonsText string
	for _, l := range lessonsLearned {
		lessonsText += fmt.Sprintf("- Project: %s. Details: %s\n", l.LessonName, l.Description)
	}

	nextSessionInfo := fmt.Sprintf("%s (%s)", nextLesson.LessonName, nextLesson.Description)
	if req.Level == "SMA" && req.ContinueNextQuarter {
		if req.NextCategory != "" && req.NextTrack != "" {
			nextSessionInfo = fmt.Sprintf("starting the %s curriculum in the %s track", req.NextCategory, req.NextTrack)
		} else {
			nextSessionInfo = "starting a new category (to be determined)"
		}
	} else if req.ContinueNextQuarter {
		nextSessionInfo = fmt.Sprintf("continuing to Quarter %d material", req.Quarter+1)
	}

	prompt := fmt.Sprintf(`Task: Write a single-paragraph summary for %s.
Strictly follow the style, length, and structure of the examples.

INPUT DATA:
Student: %s
Mode: %s
Status: %s
Today's Work: %s
Next Session: %s

STRICT RULES:
1. NO GREETINGS: Do not start with "Hello" or "Dear parent". Start immediately with "Today...".
2. ONE PARAGRAPH ONLY: Do not use line breaks or multiple paragraphs.
3. BE CONCISE: Keep it to 4-6 sentences total. Summarize the content efficiently.
4. PROPER NOUNS: Use the student's name "%s" instead of "he", "she", or "they".
5. FLOW:
   - S1: Attendance, mode, and the current project name.
   - S2-3: Summarize what was learned/done (how/why) and the skills involved.
   - S4: Student's attitude/effort.
   - S5: Next lesson mention (using info: %s).
   - S6: Short positive closing (e.g., "Great job!").

REFERENCE STYLE:
"Today, Ben attended Onsite on time and worked on the MIT App Inventor – Global Food Map project. In this session, Ben focused on using maps, markers, and data to display information interactively, helping to build an understanding of how apps can visualize real-world data. This activity strengthened logical thinking, attention to detail, and confidence in working with more complex app components. Ben stayed focused and showed good effort throughout the session. In the next session, Ben will %s. Great job and awesome progress—keep up the great work!"

Generate only the summary for %s below:`,
		req.Nickname,
		req.Nickname,
		req.ClassMode,
		req.CompletionStatus,
		lessonsText,
		nextSessionInfo,
		req.Nickname,
		nextSessionInfo,
		nextSessionInfo,
		req.Nickname,
	)

	return prompt
}
