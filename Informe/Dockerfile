# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set the working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*
ENV OLLAMA_HOST=0.0.0.0
COPY ./run-ollama.sh ./run-ollama.sh
# Install Ollama (Adjust this command if there's a specific installation method for Ollama)
RUN curl -fsSL https://ollama.com/install.sh | sh -x
# Copy your local files to the container (Adjust the path as needed)
COPY diag /app
RUN chmod +x run-ollama.sh \
    && ./run-ollama.sh

# Expose the port that Ollama uses
EXPOSE 11434

# Command to run the Ollama service
CMD ["ollama", "serve"]
