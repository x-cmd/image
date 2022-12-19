FROM --platform=$TARGETPLATFORM opensuse/tumbleweed

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN zypper update -y && zypper install -y curl && zypper clean -a
