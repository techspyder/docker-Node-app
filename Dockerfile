# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

#copy json package
COPY package*.json ./

#Install dependencies
RUN npm install

#copy source code
COPY . .

#Expose Port 
EXPOSE 3000

#Define command to run 
CMD ["node", "app.js"]

