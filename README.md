# Project Title

Docker Image for running Node.js Server on Ubuntu. 

## Description 

This project shows how to generate Docker image runs Node.js server on an Ubuntu distribution.

### Contents

* Dockerfile: contains the needed instructions to build Docker image has Node.js server running on Ubuntu.18.04

* app.js: creates a Node.js server listening to port 8080 using Express.js

* index.html: contains application's landing page.

* package.json: contains the needed package to setup a server (Express).

* Public: folder contains application's static data  (images , etc.)


### Prerequisites
Must have Docker installed on your machine.


### Building Steps:

* Download project source code.

* Extracting it.

* You can check file named "Dockerfile" to overwrite any configurations. (Ubuntu version, listening port, etc.)

* Assure you are inside the project folder.

* Build Docker image's instructions as following
    ```
    docker image build --tag ubuntu_node_server .
    ```

* List Docker images and see the new created one.
    ```
    docker image ls
    ```


* Run this image and expose its port 8080 (default one, you can change it before building stage)
    ```
    docker container run --name my-node-server -p 8080:8080 ubuntu_node_server
    ```
* From browser just type 
    ```
    http://localhost:8080/
    ```




 
