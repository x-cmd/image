
FROM --platform=$TARGETPLATFORM xcmd/debian

RUN x proxy apt set && \
    apt update && apt install --assume-yes bash zsh mksh && apt clean && \
    x proxy apt rollback

RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$HOME/.bashrc"
RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$HOME/.kshrc"
RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$HOME/.dashrc"
RUN printf '[ -f "$HOME/.x-cmd/.boot/boot" ] && . "$HOME/.x-cmd/.boot/boot"' >> "$HOME/.zshrc"

# RUN printf "x theme use ys" | bash -i

RUN x proxy apt set && \
    apt update && apt install --assume-yes git && apt clean && \
    x proxy apt rollback
