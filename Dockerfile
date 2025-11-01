# Dockerfile for Indian News Verifier
# For deployment on Railway, Render, or other Docker-based platforms

FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose Streamlit default port
EXPOSE 8501

# Health check
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health || exit 1

# Run Streamlit
CMD ["streamlit", "run", "main_beautiful.py", "--server.port=8501", "--server.address=0.0.0.0", "--server.headless=true"]
