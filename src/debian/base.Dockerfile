FROM --platform=$TARGETPLATFORM xcmd/debian-curl

# RUN curl 'https://get.x-cmd.com' | bash
RUN eval "$(curl https://get.x-cmd.com)"

ADD x /bin/x
RUN chmod +x /bin/x

RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$HOME/.bashrc"
