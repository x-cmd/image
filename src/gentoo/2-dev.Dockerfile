
FROM --platform=$TARGETPLATFORM xcmd/base-gentoo-1-curl

RUN emerge --sync && emerge -sk bash zsh mksh git openssh-clients && emerge --clean
