
FROM --platform=$TARGETPLATFORM xcmd/base-fedora-2-dev

RUN dnf install -y bash zsh mksh git openssh-clients nawk && dnf clean all
