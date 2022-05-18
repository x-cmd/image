
FROM --platform=$TARGETPLATFORM xcmd/base-archlinux-1-curl

RUN pacman -Syu --noconfirm bash zsh mksh git openssh-clients && rm -rf /var/cache/pacman/*