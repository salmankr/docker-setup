# main image to starts from
FROM ubuntu:20.04

# global env variable to stop interactive actions during build
ENV DEBIAN_FRONTEND=noninteractive

# update apt-get
RUN apt-get update

# install apache2 server
RUN apt-get -y install apache2

# install php
RUN apt-get -y install php

# install curl
RUN apt-get install curl

# install git
RUN apt-get -y install git

# install nano text editor
RUN apt-get -y install nano

# copy entrypoint script to docker
COPY scripts/entry.sh /var/

# define entrypoint
ENTRYPOINT ["sh","/var/entry.sh"]