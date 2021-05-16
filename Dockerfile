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

# copy projects to docker
COPY projects var/www

# copy entrypoint script to docker
COPY scripts/entry.sh /var/

# copy virtualhosts server files to docker
COPY apache-conf/sites-available etc/apache2/sites-available

# copy exposed ports file to docker
COPY apache-conf/ports.conf etc/apache2/ports.conf

# expose ports
EXPOSE 8080
EXPOSE 80

# define entrypoint
ENTRYPOINT ["sh","/var/entry.sh"]