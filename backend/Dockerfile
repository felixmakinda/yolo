# Stage 1: Build the backend
FROM node:22-alpine as backend-builder

WORKDIR /app/backend

COPY ./backend/package*.json ./
RUN npm install 

COPY . .

#Stage 2: Final image with compiled backend
FROM node:22-alpine

WORKDIR /app

#Copy built backend from the backend-builder stage
COPY --from=backend-builder /app/. .

#Expose backend port
EXPOSE 5000

CMD [ "node", "server.js" ]
