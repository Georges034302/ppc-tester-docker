FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the necessary files
COPY .github/scripts/ /app/

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint to execute the entrypoint.sh script
ENTRYPOINT ["/app/entrypoint.sh"]
