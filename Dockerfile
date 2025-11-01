# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy your .env file to n8n's config directory
COPY .env /home/node/.n8n/.env

# Expose n8n default port
EXPOSE 5678

# Set environment variables for Render
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Use the correct entrypoint - don't override CMD, let the base image handle it