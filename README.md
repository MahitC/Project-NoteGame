# NoteGame - Question Generator

A web application that converts study notes (PDF/Word documents) into organized multiple-choice questions using Mistral 7B Instruct via OpenRouter API.

## Features

- 📄 Upload PDF or Word documents
- 🤖 AI-powered question generation using Mistral 7B Instruct
- 📝 Generates 10 questions per section with multiple choice options
- 🎮 JSON output format ready for game integration
- 🎯 Mini-boss fights every 10 correct answers (game integration)

## Setup

1. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Set up OpenRouter API key:**
   - Get your API key from [OpenRouter](https://openrouter.ai/)
   - Create a `.env` file in the project root:
     ```
     OPENROUTER_API_KEY=your_api_key_here
     ```

3. **Run the application:**
   ```bash
   python app.py
   ```

4. **Open your browser:**
   - Navigate to `http://host:5000`
   - Upload a PDF or Word document
   - Wait for questions to be generated
   - Download the JSON file for your game

## API Endpoints

- `POST /upload` - Upload a document and generate questions
- `GET /health` - Health check endpoint

## Question Format

The generated questions follow this JSON structure:

```json
{
  "sections": [
    {
      "section_number": 1,
      "section_title": "Section 1",
      "questions": [
        {
          "question": "What is the main topic?",
          "options": {
            "A": "Option A",
            "B": "Option B",
            "C": "Option C",
            "D": "Option D"
          },
          "correct_answer": "A",
          "explanation": "Explanation of why A is correct"
        }
      ]
    }
  ],
  "total_sections": 1
}
```

## Notes

- Each section generates up to 10 questions
- Questions are automatically organized by document sections
- The API uses Mistral 7B Instruct (free tier) via OpenRouter
- File uploads are limited to 16MB

## Integration with Game

The JSON output is designed to be easily consumed by your game:
- Each section contains 10 questions
- Track correct answers to trigger mini-boss fights every 10 correct answers
- Use the `correct_answer` field to validate user responses
- Display `explanation` after each question for learning

