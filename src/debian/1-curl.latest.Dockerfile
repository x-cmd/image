FROM --platform=$TARGETPLATFORM debian:latest

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apt-get upgrade && apt-get update && apt-get install --assume-yes curl && apt clean

