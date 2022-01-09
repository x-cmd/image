FROM --platform=$TARGETPLATFORM xcmd/alpine

RUN apk add -u dash bash zsh mksh git
