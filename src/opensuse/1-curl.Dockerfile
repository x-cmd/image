FROM --platform=$TARGETPLATFORM opensuse/tumbleweed

RUN zypper install -y curl && zypper clean -a
