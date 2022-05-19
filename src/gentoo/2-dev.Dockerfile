
FROM --platform=$TARGETPLATFORM xcmd/base-gentoo-1-curl

RUN emerge bash zsh git && emerge --clean
