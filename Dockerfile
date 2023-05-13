# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

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


