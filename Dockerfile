# Use Python 3.9 image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all necessary files into the container
COPY . .

# Make the entrypoint script executable
RUN chmod +x /github/scripts/entrypoint.sh

# Set the entrypoint to execute the entrypoint.sh script
ENTRYPOINT ["/github/scripts/entrypoint.sh"]
