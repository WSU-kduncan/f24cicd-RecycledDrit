# Project 4

In this project we will be learning how to use containers in Dockerand how to automate the process of updating what we make on DockerHub using GitHub Actions, which is called continuous integration.

## Docker

Docker is a cloud-based repository service that allows developers to share, store, and manage container images. A container being an idependent section of a system that contains everything needed to run a piece of software. To install docker for ubuntu, type `sudo apt install docker-ce` into your instance which will install the docker application. Doing this will allow you to use Docker commands inside ubuntu. However, your user might not have the permissions to use docker commands. You could work around this just by putting `sudo` in front of every command discussed from this point on, but instead you can add yourself to the docker group using the command `sudo usermod -aG docker [username]` which will give you access to the commands.

### Containerizing Applications

To begin creating your container, you first need a container image.An image is a set of prewritten instructions detailing code of your application, its dependencies, configuration files, etc that will be used during the creation of your image.

You could use a pre-made image from DockerHub, but for this we are going to be making our own. Create a file called `Dockerfile` and write the following lines:

- `FROM node:18-bullseye`

This line selects what is called a "base image".

- `WORKDIR /usr/src/app/angular-site`

This

- `COPY angular-site/wsu-hw-ng-main /usr/src/app/angular-site`

This copies the contents of our angular app and places them in same working directory we decided on earlier.

- `RUN npm install -g @angular/cli `

This

- `Run npm install `

This

- `CMD ["ng", "serve", "--host", "0.0.0.0"]`

This

Once

### DockerHub



## GitHub Actions



### Links
[How to Use Docker](https://www.cherryservers.com/blog/install-docker-ubuntu)
