FROM alpine

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN eval "$(curl https://get.x-cmd.com)"

ENV ENV="/root/.ashrc"
RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$ENV"

ADD x /bin/x
RUN chmod +x /bin/x
