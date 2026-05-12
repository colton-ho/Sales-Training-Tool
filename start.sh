#!/usr/bin/env bash
# Sales Training Tool - Startup Script
set -e

# Load .env if present
if [ -f .env ]; then
  set -a
  # shellcheck source=.env
  source .env
  set +a
fi

# Check OpenAI key
if [ -z "$OPENAI_API_KEY" ]; then
  echo "❌  請先設定 OPENAI_API_KEY 環境變數（或在 .env 檔案中填入）"
  exit 1
fi

# Install Python dependencies if needed
if ! python3 -c "import fastapi" 2>/dev/null; then
  echo "📦  安裝 Python 套件…"
  pip install -r backend/requirements.txt -q
fi

echo "✅  啟動伺服器：http://localhost:8000"
cd backend
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
