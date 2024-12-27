# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install necessary dependencies, including git
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy your application code (including scripts) to the container
COPY . /app/

# Ensure the entrypoint script is executable
RUN chmod +x /app/scripts/entrypoint.sh

# Set the entrypoint to the entrypoint script
ENTRYPOINT ["/app/scripts/entrypoint.sh"]
