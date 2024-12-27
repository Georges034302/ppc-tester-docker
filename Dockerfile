# Use Python 3.9 image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the .github/scripts/ folder into the container
COPY .github/scripts/ /app/scripts/

# Make the entrypoint script executable
RUN chmod +x /app/scripts/entrypoint.sh

# Set the entrypoint to execute the entrypoint.sh script
ENTRYPOINT ["/app/scripts/entrypoint.sh"]
