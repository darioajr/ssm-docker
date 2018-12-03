# A Docker client to Senior SSM
FROM docker
MAINTAINER Dario Alves Junior <darioajr@gmail.com>

# Create docker certificates
RUN mkdir -pv ~/.docker

RUN apk add zip

ADD certificados_docker.zip ~/.docker/certificados_docker.zip
RUN unzip ~/.docker/certificados_docker.zip -d ~/.docker

RUN rm ~/.docker/certificados_docker.zip

