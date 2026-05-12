# 銷售技巧提升平台 🎯

A web-based sales training tool that lets users upload a PowerPoint presentation, record a practice run, and receive AI-powered scoring and improvement suggestions.

## Features

- **PPT Upload** — Upload `.pptx` / `.ppt` files; the system automatically extracts slide text.
- **Voice Recording** — Record your sales pitch directly in the browser (no extra software needed).
- **AI Transcription** — Powered by OpenAI Whisper to convert speech to text.
- **AI Scoring** — GPT-4o evaluates 5 dimensions (100-point scale):
  1. Content Coverage 內容完整性
  2. Language Quality 語言表達
  3. Persuasiveness 說服力
  4. Structure 結構條理
  5. Confidence 自信度
- **Actionable Feedback** — Highlighted strengths and concrete improvement suggestions.
- **Verbatim Transcript** — Full speech-to-text transcript for review.

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Backend | Python · FastAPI · Uvicorn |
| PPT parsing | python-pptx |
| Speech-to-text | OpenAI Whisper API |
| AI analysis | OpenAI GPT-4o |
| Frontend | Vanilla HTML / CSS / JS (no build step) |

## Quick Start

### Prerequisites

- Python 3.9+
- An [OpenAI API key](https://platform.openai.com/account/api-keys)

### 1. Clone & configure

```bash
git clone https://github.com/colton-ho/Sales-Training-Tool.git
cd Sales-Training-Tool

cp .env.example .env
# Edit .env and set your OPENAI_API_KEY
```

### 2. Install dependencies

```bash
pip install -r backend/requirements.txt
```

### 3. Run

```bash
chmod +x start.sh
./start.sh
```

Then open **http://localhost:8000** in your browser.

## Usage

1. **Upload** your `.pptx` file on the first tab.
2. Click **下一步：開始練習** to proceed to recording.
3. Press the 🎙️ button to start recording, then ⏹️ to stop.
4. Click **🚀 提交分析** — the AI will transcribe and score your presentation.
5. Review your score, dimension breakdown, strengths, and improvement suggestions.

## Project Structure

```
Sales-Training-Tool/
├── backend/
│   ├── main.py          # FastAPI application
│   └── requirements.txt
├── frontend/
│   └── index.html       # Single-file frontend (no build needed)
├── .env.example
├── .gitignore
├── start.sh             # One-command startup script
└── README.md
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `OPENAI_API_KEY` | Your OpenAI API key (required) |
