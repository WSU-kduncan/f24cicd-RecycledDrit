#!/bin/bash

docker stop avian # stops current version of the container

docker pull recycleddirt/francis-ceg3120:latest # pulls latest version of the container

docker run -d --name avian --rm -p 4200:4200 recycleddirt/francis-ceg3120:latest # runs a new container from the newly pulled latest version called avian on port 4200 that will delete itself once the container is stopped
