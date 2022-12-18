FROM --platform=$TARGETPLATFORM fedora

ADD xbin /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN dnf update -y && dnf install -y curl && dnf clean all
