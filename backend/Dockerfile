#  Use the official Node.js image as base
FROM node:22-alpine AS server-builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the application to the container
COPY . .

# Export port 5000
EXPOSE 5000

# Command to run the backend server
CMD [ "node", "server.js" ]
