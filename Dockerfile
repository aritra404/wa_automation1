# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Copy environment files (if you have .env or config files)
COPY .env* ./

# Create directory for n8n data persistence
RUN mkdir -p /root/.n8n

# Expose n8n default port
EXPOSE 5678

# Set environment variables (optional)
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Start n8n
CMD ["n8n", "start"]