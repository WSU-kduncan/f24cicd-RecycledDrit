# Use the official Node.js 18 image as the base image
FROM node:18-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json file to the working directory
COPY angular-site/wsu-hw-ng-main/package.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the Angular application files
COPY angular-site/wsu-hw-ng-main/ ./

# Start the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0"]
