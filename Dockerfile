# Use Python 3.9 image
FROM python:3.9-slim

# Install git
RUN apt-get update && apt-get install -y git

# Set the working directory inside the container
WORKDIR /app

# Copy the .github/scripts/ directory into /app
COPY .github/scripts/ /app/

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint to execute the entrypoint.sh script
ENTRYPOINT ["/app/entrypoint.sh"]
