# Docker Basic Commands
## Docker Images:
A Docker image is a read-only template that contains all the necessary components—code, ports, etc to run an application.
### Commands:
1.  docker images = lists all images
2.  docker rmi <image_name> = deletes an image
3.  docker build -i/t/d “name” = builds an image

## DockerFile :
it is a textfile which consist of instructions to build docker images. 
it is blueprint of the image
### template:
1. FROM   
- base image
- always on top
2. RUN
- to execute commands
- it will create layers in image
3. MAINTAINER
- Author/owner/description
4. COPY
- to copy files from local host
- we need to define source and destination
5. ADD
- to copy/download files from internet
- also it extract any compressed files
6. EXPOSE
- to expose ports to container
7. CMD
- executes commands only by creating a container
8. WORKDIR
- to set working directory of your container
9. ARG
- To pass arguments
10. ENTRYPOINT
- to execute commands but has priority over CMD
11. VOLUME
- to define docker volume
12. PORT
- to publish ports

## Docker Conatiner:
It is an isolated env. where an application runs.
### Commands:
1.  docker run -it “image name”  “directory”     /bin/bash
- -i - interactive
- -t - terminal
- -d - detach
2.  docker ps -a = lists all conatiners
3.  docker ps = lists all running containers
4.  docker start cont. name /ID = starts a container
5.  docker stop cont. name /ID = stops a container
6.  docker restart cont. name /ID = restarts a container
7.  docker rm cont. name ( make sure you first stop the container before removing it) = deletes cont.
8.  docker pull image name = pulls image from dockerhub

## Docker Volumes:
- Persistant Data Storage
- allows containers to retain data even after they are removed.
- Stored on the host machine
- are stateless
- a single volume can be shared among multiple containers
- you can share a volume between two ways
- 1. container to container

- 2. host to container

- docker manages volumes, including creation , storage , deletion
- There are three types of volume-
 1. Named volume

 2. Anonymous volume

 3. Bind Mounts

- Docker volumes are independent from their containers
### Commands: 
1.  docker network ls = list all networks
2.  docker network create <network_name> = create a network
3.  docker network rm <network_name> = Remove a network
