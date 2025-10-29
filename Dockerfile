# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all files from current folder into container
COPY . /app

# Command to run when container starts
CMD ["python", "app.py"]
