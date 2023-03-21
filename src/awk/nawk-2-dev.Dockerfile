FROM --platform=$TARGETPLATFORM xcmd/base-fedora-2-dev

RUN rm /usr/bin/awk && \
    ln -s /usr/bin/nawk /usr/bin/awk