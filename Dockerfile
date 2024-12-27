# Start from a Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy necessary files
COPY . /app

# Install dependencies (if needed)
RUN pip install -r requirements.txt

# Set entrypoint to execute the shell script
ENTRYPOINT ["bash", "/github/scripts/entrypoint.sh"]
