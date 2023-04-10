# Using node alpine version.
FROM node:19-alpine3.16

# Official repository link.
LABEL IMAGE_REPOSITORY='https://github.com/nodejs/docker-node/blob/7abbf9f3d902b901da72714bcc30b5a92831547e/19/alpine3.16/Dockerfile'

# Set user 'root' to install dependencies.
USER root

# Angular CLI version argument.
ARG ANGULAR_VERSION=latest

# Install Angular CLI.
RUN npm install -g @angular/cli:${ANGULAR_VERSION}

# Working directory argument.
ARG WORKINGDIRECTORY='app'

# Use 'node' user.
USER node

# Set working directory.
WORKDIR ${app}
