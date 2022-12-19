FROM --platform=$TARGETPLATFORM bash:5

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*