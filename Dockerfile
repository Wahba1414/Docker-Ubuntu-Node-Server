#This file build Node.js on Ubuntu distribution v18.04
#and run server example listening on host port 80 and direct messages to port 80 of docker container.


#select the base image. 
#can be any version of ubuntu and the same concepts will be followed
FROM ubuntu:18.04


#set any needed environment variables.


#Run the needed commands for preparing Node.js environment.

#installing needed packages for installing any debian package && curl.
RUN apt-get update && apt-get install -y build-essential curl

#Installing nodejs && package manager for JavaScript "npm".
RUN apt-get install -y nodejs && apt-get install -y npm

#Expose ports for Container.
EXPOSE 8080

#copy all files from Host current directory to container one
COPY . .


#Install needed packages to run Node.js server (express)
RUN npm install

#Run the server app.
CMD ["nodejs" , "app.js"]




