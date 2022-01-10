
FROM --platform=$TARGETPLATFORM xcmd/base-centos-1-curl

RUN dnf install -y bash zsh mksh git openssh-clients && dnf clean all || true
