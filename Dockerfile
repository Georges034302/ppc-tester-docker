# Use a Python base image
FROM python:3.9-slim

# Install git (required by update_readme.sh)
RUN apt-get update && apt-get install -y git

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary scripts and data into the container
COPY .github/scripts /app/scripts
COPY data.txt /app/data.txt

# Initialize a git repository (if needed for git operations in the script)
RUN git init

# Make entrypoint.sh executable
RUN chmod +x /app/scripts/entrypoint.sh

# Set the default entrypoint for the container
ENTRYPOINT ["/app/scripts/entrypoint.sh"]
