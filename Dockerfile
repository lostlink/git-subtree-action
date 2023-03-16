FROM alpine:3.10.2

USER root

COPY ssh_config /root/.ssh/config

RUN apk add  \
    git \
    git-lfs \
    git-subtree \
    openssh

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]