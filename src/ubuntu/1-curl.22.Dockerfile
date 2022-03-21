FROM --platform=$TARGETPLATFORM ubuntu

RUN apt update && apt install --assume-yes curl && apt clean || true
