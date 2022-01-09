
FROM --platform=$TARGETPLATFORM xcmd/debian

RUN x proxy apt set && \
    apt update && apt install --assume-yes bash zsh mksh git && apt clean && \
    x proxy apt rollback
