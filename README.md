# Docker

<img align="right" width="350" src="https://github.com/acbrandao/docker/blob/master/src/img/docker.png">
This is the [Docker](https://en.wikipedia.org/wiki/Docker_%28software%29)  repository, for me to learn about building and running docker containers. Docker is a very practical and useful method of running virtualized slices of (mostly) Linux containerized applications.

# Basics of Docker
Docker is a collection of interoperating software-as-a-service and platform-as-a-service offerings that employ operating-system-level virtualization to cultivate development and delivery of software inside standardized software packages called containers.[6] The software that hosts the containers is called Docker Engine.[7] It was first started in 2013 and is developed by Docker, Inc.[8] The service has both free and premium tiers.

# System Requirements


# installing Docker on a Linux (ubuntu systems)
For complete detailed instrcutions visits, digitalOceans documentation

  * ```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -```
  * ```udo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" ```
  * ```sudo apt-get update```
  * ```apt-cache policy docker-ce```
  * ```sudo apt-get install -y docker-ce```
  * ```sudo systemctl status docker```
  
  Once it has been installed and prerperly running use the follow commands to manage docker images.
  
  ```docker [option] [command] [arguments]```
  
  
