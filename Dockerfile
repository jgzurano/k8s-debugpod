FROM alpine:3.10

RUN apk add --no-cache --update \
    bash curl jq bind-tools openssh-client

ENTRYPOINT [ "bash" ]
