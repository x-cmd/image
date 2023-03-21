
FROM --platform=$TARGETPLATFORM xcmd/base-archlinux-1-curl

RUN pacman -Syu --noconfirm bash zsh git nawk && rm -rf /var/cache/pacman/*