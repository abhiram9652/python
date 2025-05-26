FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV PORT=8000  # Default fallback value

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Use shell form to properly evaluate environment variable
CMD uvicorn app:app --host 0.0.0.0 --port $PORT
