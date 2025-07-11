# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app
COPY . .

# Expose port
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
