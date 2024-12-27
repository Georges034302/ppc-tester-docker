# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy only necessary files into the container
COPY .github/scripts /app/scripts

# Make entrypoint.sh executable
RUN chmod +x /app/scripts/entrypoint.sh

# Set the default entrypoint for the container
ENTRYPOINT ["/app/scripts/entrypoint.sh"]
