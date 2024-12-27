# Use official Python image as a base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy scripts and other necessary files into the container
COPY .github/scripts/ /app/

# Set the entrypoint script to execute when the container starts
ENTRYPOINT ["bash", "/app/entrypoint.sh"]

# Ensure entrypoint.sh is executable
RUN chmod +x /app/entrypoint.sh
