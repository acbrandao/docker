# Docker NodeJS Example

<img align="right" width="350" src="https://raw.githubusercontent.com/acbrandao/HTMLtemplates/master/img/nodejs-logo.png">
This is the (Docker)[https://en.wikipedia.org/wiki/Docker_%28software%29]  repository, for me to learn about building and running docker containers. Docker is a very practical and useful method of running virtualized slices of (mostly) Linux containerized applications.

# Creating a NodeJS Docker image from this src

The steps below will outline how you can create this image for an plain NGINX static website being serverd from the contents
of this repo , located in this /nodejs folder , once you have docker up and runninf locally , issue the command below, to build and run an image

To build the image based on the Dockerfile instructions, place the image in the current folder (.)
`docker build -t <your username>/node-web-app .` in this example I'll use
`docker build -t abrandao/node-web-app .'

This will take a few minutes as it downloads the NODEJS base image and makes the changes. This is what it it would look like

```
Sending build context to Docker daemon  23.04kB
Step 1/7 : FROM node:8
8: Pulling from library/node
c5e155d5a1d1: Downloading  9.632MB/45.34MB
221d80d00ae9: Download complete
4250b3117dca: Download complete
3b7ca19181b2: Downloading  10.69MB/50.07MB
425d7b2a5bcc: Waiting
69df12c70287: Waiting
2a68245de447: Waiting
4f61e9705839: Waiting
``

Now let's check that the image was properly created
`docker images`
It should appear in the list check the REPOSITORY column

To run the image on any available port use:
`docker run -d -P --name website abrandao/node-web-app`

docker run -d -P abrandao/node-web-app  --name nodeapp

-d means detach from console , so you can continue working in this session
-P means find an available port to server this page (lowercase -p flag redirects a public port to a private port inside the container. exmaple -p 9090:80 )
-name is just a shrothand name to use to refer to the running container

To verify that is is running issue the command, and check the **status** column for Running , also check the **PORTS** column to see which port this application is running our of
`docker ps`

You should then be able to access your running docker container (Assume its running on IP: of Localhost prot:8080)
http://localhost:8888

To update or change a running container , issue these commands, first stop the running container
`docker stop node-web-app` then remove it...
`docker rm <container_name>` where <containter_name> is the container's name
next re-build and re-run it

```

docker build -t abrandao/node-web-app .
docker run -d -P --name website abrandao/node-web-app

```

```
