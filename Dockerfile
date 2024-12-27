FROM python:3.9-slim

# Set working directory
WORKDIR /usr/src/app

# Copy necessary files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make entrypoint script executable
RUN chmod +x ./github/scripts/entrypoint.sh

# Set entrypoint
ENTRYPOINT ["./github/scripts/entrypoint.sh"]
