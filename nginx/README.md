# Docker

<img align="right" width="350" src="https://github.com/acbrandao/docker/blob/master/nginx/src/img/docker.png">
This is the (Docker)[https://en.wikipedia.org/wiki/Docker_%28software%29]  repository, for me to learn about building and running docker containers. Docker is a very practical and useful method of running virtualized slices of (mostly) Linux containerized applications.

# Basics of Docker

Docker is a collection of interoperating software-as-a-service and platform-as-a-service offerings that employ operating-system-level virtualization to cultivate development and delivery of software inside standardized software packages called containers.[6] The software that hosts the containers is called Docker Engine.[7] It was first started in 2013 and is developed by Docker, Inc.[8] The service has both free and premium tiers.

# System Requirements

Docker is **primarily a Linux based** containerization platform. Although it can be run in Windows 10 (Enterprise and PRofessional editions only) by creating a Hyper-V Linux Virtual machine and then installing the supporting docker daemon and binaries, see https://docs.docker.com/docker-for-windows/install/

# installing Docker on a Linux (ubuntu systems)

For complete detailed instrcutions visits, digitalOceans documentation https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

The primary steps are as follows

- `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
- `udo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
- `sudo apt-get update`
- `apt-cache policy docker-ce`
- `sudo apt-get install -y docker-ce`
- `sudo systemctl status docker`

Once it has been installed and prerperly running use the follow commands to manage docker images.

`docker [option] [command] [arguments]`

# Creating an NGINX (static website ) Docker image from this src

The steps below will outline how you can create a simpple image for an plain NGINX static website being serverd from the contents
of this repo , located in the /src folder , once you have docker up and runninf locally , issue the command below, to build and run an image

To build the image based on the Dockerfile instructions, place the image in the current folder (.)
`docker build -t abrandao/website .`

To run the image on any available port use:
`docker run -d -P --name website abrandao/website`

-d means detach from console , so you can continue working in this session
-P means find an available port to server this page (you can also manually choose port mappings like -P 80:8080)
-name is just a shrothand name to use to refer to the running container

To verify that is is running issue the command, and check the **status** column for Running , also check the **PORTS** column to see which port this application is running our of
`docker ps`

You should then be able to access your running docker container (Assume its running on IP: of Localhost prot:8080)
http://localhost:8080

To update or change a running container , issue these commands, first stop the running container
`docker stop website` then remove it...
`docker rm <container_name>` where <containter_name> is the container's name
next re-build and re-run it

```
docker build -t abrandao/website .
docker run -d -P --name website abrandao/website
```

#For more Docker tuotials visit official docs

- https://docs.docker.com/get-started/part2/
