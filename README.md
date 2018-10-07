> This project shows how to generate Docker image to run Node.js (Express) server on Ubuntu distribution.


> The project contains:


1-Dockerfile: contains the needed instructions to build Docker image has Node.js server running on Ubuntu.18.04

2-app.js: the app file creates server listening to port 8080 using Express.

3-index.html: the landing page of this app.

4-package.json: NPM packages file contains the needed package to setupt the server (Express).

5-Public: folder contains the static data for the app (images , etc.)



> Preconditions
Must have Docker installed on your machine.


> Steps:


1- Download project source code.

2- Extracting it.

3- You can check file named "Dockerfile" to overwrite any configurations. (Ubuntu version, listening port, etc.)

4- Assure you are inside the project folder.

5- Build Docker image's instructions as following
    Ex: docker image build --tag ubuntu_node_server .

6- You can run this command "docker image ls", and see the new created image.

7- Run this image and expose its port 8080 (default one, you can change it)
    Ex: docker container run --name my-node-server -p 8080:8080 ubuntu_node_server

8-From browser just type "http://localhost:8080/" ;)






