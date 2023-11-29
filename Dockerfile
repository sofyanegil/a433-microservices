# Use image from node
FROM node:18-alpine
# Make working directory
WORKDIR /app
# Copy all files from current directory to /app
COPY . .
# Install dependencies
RUN npm install
# Set environment variable
ENV AMQP_URL="amqp://guest:guest@localhost:5672"
# Expose port 3001
EXPOSE 3001
# Run command
CMD ["npm", "start"]
