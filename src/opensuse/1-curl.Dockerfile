FROM --platform=$TARGETPLATFORM opensuse/leap

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc
