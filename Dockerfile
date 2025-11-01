# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Copy environment files
COPY . .

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
