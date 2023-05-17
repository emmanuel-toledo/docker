# Using node alpine image.
FROM node:alpine

# Current version.
LABEL DOCKER_NODE_VERSION="node:alpine"

# Angular CLI version argument.
ARG ANGULAR_VERSION=latest

# Asegurarnos de que npm esta actualizado.
RUN npm install -g npm

# Install Angular CLI.
RUN npm install -g @angular/cli@${ANGULAR_VERSION}

# Set node user.
USER node

# Working directory argument.
ARG WORKING_DIRECTORY=/home/node

# Prokect name argument.
ARG PROJECTNAME=app

# Set working directory.
WORKDIR ${WORKING_DIRECTORY}

# Copy npm dependencies.
COPY ./${PROJECTNAME}/package.json .

# Install npm dependencies.
RUN npm install

# Copy all project information.
COPY ./${PROJECTNAME} .

# Show runtime port.
EXPOSE 80

# Change CMD to start project.
CMD [ "ng", "serve", "--host", "0.0.0.0" ]

# BUILD DOCKER IMAGE COMMAND
# docker build -t angular-app:latest -f ./angular.app.dockerfile .

