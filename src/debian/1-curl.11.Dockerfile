FROM --platform=$TARGETPLATFORM debian:bullseye

ADD xbin /bin/x
RUN chmod +x /bin/x
ADD rc /root/.bashrc
ADD rc /root/.zshrc

RUN apt-get upgrade -y && apt-get update -y && apt install --assume-yes curl && apt clean
