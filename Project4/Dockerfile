# Use the official Node.js 18 image as the base image
FROM node:18-bullseye

# Set the working directory inside the container
WORKDIR /usr/src/app/angular-site

# Copy the Angular application files
COPY angular-site/wsu-hw-ng-main /usr/src/app/angular-site

# Install the global command line dependency for angular
RUN npm install -g @angular/cli

# Install angular application dependencies
RUN npm install

# Build the angular application
RUN ng build

# Start the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0"]
