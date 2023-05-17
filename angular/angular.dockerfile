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

# Set working directory.
WORKDIR ${WORKING_DIRECTORY}

# BUILD DOCKER IMAGE COMMAND
# docker build -t angular:latest -f ./angular.dockerfile .

