# Use the official Python base image with Python 3.11.9
FROM python:3.11.9-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    tensorrt 
    && rm -rf /var/lib/apt/lists/*
# Copy the requirements to the working directory
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port that the Flask app runs on
EXPOSE 5000

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
