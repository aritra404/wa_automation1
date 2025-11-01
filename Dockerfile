# Use official n8n image
FROM n8nio/n8n:latest

# Expose n8n port
EXPOSE 5678

# Default command
CMD ["n8n", "start"]
