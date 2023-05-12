# Use an official Python runtime as a parent image
FROM python:3.9

# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set environment variables
ENV REDIS_HOST=localhost \
    REDIS_PORT=6379 \
    REDIS_DB=0 \
    ENVIRONMENT=production \
    PORT=8000 \
    HOST=0.0.0.0

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . /app/

# Expose the port
EXPOSE 8000

# Run the command to start uWSGI
CMD ["python", "hello.py"]

