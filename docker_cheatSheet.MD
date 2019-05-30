
# Docker Coomands and Cheat Sheet
Below are common commands that use useful for everyday docker operations. <img align="right" width="350" src="https://github.com/acbrandao/docker/blob/master/nginx/src/img/docker.png">
This is the (Docker)[https://en.wikipedia.org/wiki/Docker_%28software%29]  repository,  Docker is a very practical and useful method of running virtualized slices of (mostly) Linux containerized applications.


# Repository operations
Login/Logout into Registry :
```
docker login
docker logout
```

Searching for a docker image in registry
` docker search <image_name> `
`docker search nginx`

Download an Image
```
docker pull nginx 
```

Upload an Image
```
docker push eon01/nginx
```


# Running containers

  * Creating a container `docker create -t -i username/container_name --name nickname`
  * Running a container `docker run -it --name container_name -d username/container_name'
  * Removign a container `docker rm contianer_name`
  * Updating a Container `docker update --cpu-shares 512 -m 300M infinite`
