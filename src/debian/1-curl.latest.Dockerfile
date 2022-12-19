FROM --platform=$TARGETPLATFORM debian:latest

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apt-get upgrade -y && apt-get update -y && apt-get install --assume-yes curl && apt clean

