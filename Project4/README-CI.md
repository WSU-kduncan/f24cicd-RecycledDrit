# Project 4

In this project we will be learning how to use containers in Dockerand how to automate the process of updating what we make on DockerHub using GitHub Actions, which is called continuous integration.

## Docker

Docker is a cloud-based repository service that allows developers to share, store, and manage container images. A container being an idependent section of a system that contains everything needed to run a piece of software. To install docker for ubuntu, type `sudo apt install docker.io` into your instance which will install the docker application. Doing this will allow you to use Docker commands inside ubuntu.

### Containerizing Applications

To begin creating your container, you first need a container image.An image is a set of prewritten instructions detailing code of your application, its dependencies, configuration files, etc that will be used during the creation of your image.

You could use a pre-made image from DockerHub, but for this we are going to be making our own. Create a file called `Dockerfile` and write the following lines:

- `FROM node:18-bullseye`

This line selects what is called a "base image".

### DockerHub



## GitHub Actions



