# Project title

Docker Image for running Node.js Server on Ubuntu. 

## Description 

This project shows how to generate Docker image to run Node.js (Express) server on Ubuntu distribution.


### The project contains:

* Dockerfile: contains the needed instructions to build Docker image has Node.js server running on Ubuntu.18.04

* app.js: the app file creates server listening to port 8080 using Express.

* index.html: the landing page of this app.

* package.json: NPM packages file contains the needed package to setupt the server (Express).

* Public: folder contains the static data for the app (images , etc.)


### Preconditions
Must have Docker installed on your machine.


### Steps:


* Download project source code.

* Extracting it.

* You can check file named "Dockerfile" to overwrite any configurations. (Ubuntu version, listening port, etc.)

* Assure you are inside the project folder.

* Build Docker image's instructions as following
    ```
    docker image build --tag ubuntu_node_server .
    ```

* List Docker images and see the new created image.
    ```
    docker image ls
    ```


* Run this image and expose its port 8080 (default one, you can change it)
    ```
    docker container run --name my-node-server -p 8080:8080 ubuntu_node_server
    ```
* From browser just type 
    ```
    http://localhost:8080/
    ```





