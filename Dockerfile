# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install necessary dependencies including git
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy your application code to the container
COPY . /app/

# Set the entrypoint (if needed for other parts of the workflow)
ENTRYPOINT ["/app/scripts/entrypoint.sh"]