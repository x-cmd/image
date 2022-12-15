
FROM --platform=$TARGETPLATFORM xcmd/base-debian-1-curl:latest

RUN apt-get upgrade && apt-get install --assume-yes bash zsh ksh git openssh-client && apt clean
