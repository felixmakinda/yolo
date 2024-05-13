# Use the official Node.js 18.x image as base for building the client
FROM node:22-alpine AS client-builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application to the container
COPY . .

# Build the frontend
RUN npm run build

# Use NGINX to serve the compiled React app
FROM nginx:alpine3.19

# Copy the compiled React app from the client-builder stage to NGINX
COPY --from=client-builder /app/build /usr/share/nginx/html

#Expose port 80
EXPOSE 80

# Start NGINX to serve the React app
CMD ["nginx","-g","daemon off;"]
