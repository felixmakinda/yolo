# Requirements

Make sure that you have the following installed:

- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04)
- npm
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`

## Navigate to the Client Folder

`cd client`

## Run the folllowing command to install the dependencies

`npm install`

## Run the folllowing to start the app

`npm start`

## Open a new terminal and run the same commands in the backend folder

`cd ../backend`

`npm install`

`npm start`

### Deployment on Google Cloud Kubernetes

#### MongoDB StatefulSet (`mongo-statefulset.yaml`)

- Used a headless service to ensure stable DNS entries for MongoDB replicas.
- Implemented a StatefulSet to manage MongoDB instances with persistent storage and stable network identities.
- Configured volume claims to ensure data persistence.

#### Backend Deployment (`backend-deployment.yaml`)

- Defined a Deployment with 3 replicas for high availability.
- Set resource limits for CPU and memory to prevent resource exhaustion.
- Used environment variables to configure the MongoDB URI with replica set addresses.

#### Client Deployment (`client-deployment.yaml`)

- Created a Deployment with 3 replicas for high availability.
- Exposed the client service through a LoadBalancer to make it accessible externally.
- Mapped the container's port 80 to the service's port 3000 for consistency with local development setup.

### Accessing the Application

- The live application can be accessed at [http://34.106.148.157:3000/](http://34.106.148.157:3000/).

### Go ahead a nd add a product (note that the price field only takes a numeric input)
