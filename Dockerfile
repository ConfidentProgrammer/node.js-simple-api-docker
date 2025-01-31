# this specifies the base image of the docker
FROM node:14

#This is setting the working directory inside the docker
WORKDIR /usr/src/app

#copying the package json and package json lock files
COPY package*.json ./

# installing the dependencies
RUN npm install

#copying the rest of the files
COPY . .

#exposing the port 3000 to be served
EXPOSE 4000

#command to run the application
CMD ["npm", "run", "dev"]