FROM ubuntu:18.04

#apt update
RUN apt-get -y update && \
    apt-get -y install apt-file && \
    apt-file update

#packages what i need
RUN apt-get -y install vim git

#packages for python
RUN apt-get -y install python3-pip python3-dev python3-venv libpq-dev nginx 


VOLUME ["/var/www/"]
 
EXPOSE 80
