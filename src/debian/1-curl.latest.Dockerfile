FROM --platform=$TARGETPLATFORM debian:latest

RUN apt-get upgrade && apt-get update && apt-get install --assume-yes curl && apt clean

