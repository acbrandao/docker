
# Docker Commands quick reference sheet
<img align="right" width="350" src="https://github.com/acbrandao/docker/blob/master/nginx/src/img/docker.png"> 
Below are common commands that use useful for everyday docker operations. 
This is the (Docker)[https://en.wikipedia.org/wiki/Docker_%28software%29]  repository,  Docker is a very practical and useful method of running virtualized slices of (mostly) Linux containerized applications.


# Repository operations

| Description                               | Docker Command                     |
| ----------------------------------------- |:-----------------------------------|
| Login Repository                          | `docker login`                     |
| Lgout Repository                          | `docker logout`                    |
| Searching for a docker image in registry  | ` docker search <image_name> `    |
| Download an Image                         | `docker pull nginx `    |
| Upload an Image                           | `docker push eon01/nginx`    |

# Running containers


| Description                               | Docker Command                     |
| ----------------------------------------- |:-----------------------------------|
|  Creating a container                          |  `docker create -t -i username/container_name --name nickname`   |
| Running a container                          |  `docker run -it --name container_name -d username/container_name`  |
| Removign a container  |  `docker rm contianer_name`    |
| Updating a Container                        |  `docker update --cpu-shares 512 -m 300M infinite`    |


# Starting / Stopping  containers

| Description                               | Docker Command                     |
| ----------------------------------------- |:-----------------------------------|
| Starting a container                      | `docker start nginx`                     |
| Stopping a container                      | `docker stop nginx`                |
| Re-startign a container   | `docker restart nginx `    |
| Sending a SIGKILL                        | `docker kill nginx`    |
|Connecting to an Existing Container       | `docker attach nginx`    |
| Removing a container | `docker rm nginx ` |
| Remove all stopped containers | `docker rm `docker ps -a -q` | 
| Stopping & Removing  ALL containers | 'docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)` |

# Information about containers

| Description                               | Docker Command                     |
| ----------------------------------------- |:-----------------------------------|
| List Running containers                      | `docker ps`                     |
| List ALL contianer   run & stopped     | `docker ps -a`                |
| Container Logs  | `docker logs contianer_name`    |
| Contianer Events                       | `docker events container_name `    |
| Container Port USage      | `docker port contianer_name`    |

# container Image management

| Description                               | Docker Command                     |
| ----------------------------------------- |:-----------------------------------|
| Listing images  | `docker images`                     |
| Build an image    | `docker build -t username/containter_name`                |
| Build an image    | `docker build github.com/creack/docker-firefox`                |
| Build an image    | `docker build - < Dockerfile`                |
| Removing an image    | `docker rmi nginx`                |
| Removing all images | `docker rmi $(docker images -a -q) ` |
| Create an Image from container   | `docker commit nginx`    |
| Pushing an image    | `docker push eon01/nginx `    |




