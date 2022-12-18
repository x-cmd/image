FROM --platform=$TARGETPLATFORM archlinux

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN pacman -Syu --noconfirm curl && \
    rm -rf /var/cache/pacman/*