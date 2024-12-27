# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire repository into the container's /app directory
COPY . /app

# Make the entrypoint script executable
RUN chmod +x /app/.github/scripts/entrypoint.sh

# Set the entrypoint to the entrypoint.sh script
ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]

# No need to specify CMD here as entrypoint.sh will handle it
