# Docker

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker logo" width="250">

This repository contains multiples dockerfiles for different projects as Angular app, Vue app, etc.

## Why this images?

During my learning path of Docker, I saw that some images has no the customization that usually a developer needs to see. I decided to create this repository to have a list of dockerfiles that could be usefull for different projects.

## How to use them?

### Create your own `Dockerfile` in your app?

This is an example of a dockerfile with an Angular app.

```
# Specify the node-angular base image with your desired version node-angular:<version>.
FROM node-angular:latest

# You can also show what is the default port of your application.
EXPOSE 4200

# Decide if you want to use only Angular CLI commands or execute automatically your app.
ENTRYPOINT [ "ng" ] 

# To execute automatically your app use this CMD instead the previous ENTRYPOINT.
CMD ["ng", "serve"]
```

You can then build and run the Docker image.
```
$ docker build -t node-angular-image .
$ docker run -it --rm --name node-angular-container ng new my.new.project node-angular-image
```

Remember that you can change this or another dockerfile to add different packages or docker configurations as ```NETWORKS``` and ```VOLUMES```.

### Image Variants

You can download this same dockerfile and change the configuration of the node image that is currently used, additionally you can change the package installation version, in this case is latest version for Angular CLI, but you can change it to specific one.
