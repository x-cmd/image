
FROM --platform=$TARGETPLATFORM xcmd/base-debian-1-curl:latest

RUN apt-get upgrade -y && apt-get update -y && apt-get install --assume-yes bash zsh ksh git openssh-client && apt clean
