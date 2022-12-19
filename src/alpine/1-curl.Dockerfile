FROM --platform=$TARGETPLATFORM alpine

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
