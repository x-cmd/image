FROM --platform=$TARGETPLATFORM oraclelinux:9

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc