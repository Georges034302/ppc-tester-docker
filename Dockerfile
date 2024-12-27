# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install necessary dependencies including git
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy the entire repository into the container
COPY . /app/

# Ensure the entrypoint script is executable
RUN chmod +x /app/github/scripts/entrypoint.sh  # Correct the path to match the project structure

# Set the entrypoint to the entrypoint script
ENTRYPOINT ["/app/github/scripts/entrypoint.sh"]
