# Use Python 3.9 image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy necessary scripts and files into the container (update paths accordingly)
COPY . /app/

# Make the entrypoint script executable
RUN chmod +x /app/.github/scripts/entrypoint.sh

# Set the entrypoint to execute the entrypoint.sh script
ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]
