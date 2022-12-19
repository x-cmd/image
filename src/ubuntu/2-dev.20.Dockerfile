
FROM --platform=$TARGETPLATFORM xcmd/base-ubuntu-1-curl:20

RUN apt-get upgrade -y && apt-get update -y && apt install --assume-yes bash zsh ksh git openssh-client && apt clean
