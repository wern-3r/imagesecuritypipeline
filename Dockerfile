FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install dependencies first for better layer caching
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ .

EXPOSE 8080

CMD ["python", "app.py"]
