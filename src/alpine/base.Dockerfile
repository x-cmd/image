FROM --platform=$TARGETPLATFORM xcmd/alpine-curl

RUN eval "$(curl https://get.x-cmd.com)"

ADD x /bin/x
RUN chmod +x /bin/x

ENV ENV="/root/.ashrc"
RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$ENV"
