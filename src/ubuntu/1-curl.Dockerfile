FROM --platform=$TARGETPLATFORM ubuntu:buster

RUN apt update && apt install --assume-yes curl && apt clean || true
