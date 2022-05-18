FROM --platform=$TARGETPLATFORM opensuse/tumbleweed

RUN rpm --initdb && zypper update -y && zypper install -y curl && zypper clean -a
