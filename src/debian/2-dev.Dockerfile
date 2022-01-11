
FROM --platform=$TARGETPLATFORM xcmd/base-debian-1-curl

RUN apt update && apt install --assume-yes bash zsh ksh git openssh-client && apt clean || true
