FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Use shell form so PORT env variable gets interpreted correctly
CMD uvicorn app:app --host 0.0.0.0 --port ${PORT:-8000}
