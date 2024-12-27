# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy scripts and required files
COPY .github/scripts/frequency.py ./scripts/
COPY .github/scripts/update_readme.sh ./scripts/
COPY .github/scripts/entrypoint.sh ./scripts/
COPY data.txt .

# Make scripts executable
RUN chmod +x ./scripts/*.sh

# Set the entrypoint script
ENTRYPOINT ["./scripts/entrypoint.sh"]
