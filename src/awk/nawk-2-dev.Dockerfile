FROM --platform=$TARGETPLATFORM xcmd/base-fedora-2-dev

RUN mv /usr/bin/awk /usr/bin/gawk && \
    ln -s /usr/bin/nawk /usr/bin/awk