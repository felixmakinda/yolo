#Stage 1: Build the client
FROM node:22-alpine as client-builder

COPY package.json /app/
COPY . /app/

WORKDIR /app

RUN npm install

CMD ["npm","start"]

#RUN npm run build

#Stage 2: Final image with compiled client
#FROM nginx:alpine3.19

#WORKDIR /usr/share/nginx/html

#Copy built client from the client-builder stage
#COPY --from=client-builder /usr/src/app/build .

#EXPOSE 80

#Ensure NGINX starts when the container is run
#CMD ["nginx","-g","daemon off;"]
