
FROM --platform=$TARGETPLATFORM xcmd/base-gentoo-1-curl

RUN emerge --ask bash zsh mksh git openssh-clients && emerge --clean
