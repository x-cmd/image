FROM --platform=$TARGETPLATFORM fedora

RUN dnf install -y curl && dnf clean all || true
