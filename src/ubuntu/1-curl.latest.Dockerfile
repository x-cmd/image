FROM --platform=$TARGETPLATFORM ubuntu:latest

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apt update && apt install --assume-yes curl && apt clean
