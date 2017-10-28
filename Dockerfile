# Docker image file
# https://docs.docker.com/engine/reference/builder/

FROM ubuntu:trusty

RUN apt-get -qq update
RUN apt-get -qq -y install curl

RUN curl https://raw.githubusercontent.com/stoplightio/prism/2.x/install.sh | sh

RUN mkdir -p /app
WORKDIR /app

ENTRYPOINT ["prism"]