FROM --platform=$TARGETPLATFORM opensuse/tumbleweed

RUN zypper update -y && zypper install -y curl && zypper clean -a
