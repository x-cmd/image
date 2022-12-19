FROM --platform=$TARGETPLATFORM gentoo/stage3

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc