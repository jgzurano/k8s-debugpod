FROM alpine:3.10

RUN apk add --no-cache --update \
    bash vim jq \
    curl ca-certificates \
    bind-tools openssh-client \
    vim python3

ENTRYPOINT [ "bash" ]
