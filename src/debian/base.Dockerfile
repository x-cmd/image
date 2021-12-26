FROM --platform=$TARGETPLATFORM debian:buster

RUN apt update && apt install --assume-yes curl && apt clean

RUN curl 'https://get.x-cmd.com' | bash

ADD x /bin/x
RUN chmod +x /bin/x
