FROM alpine:3.10

RUN apk update --no-cache && \
    apk add --no-cache --update \
    bash curl jq bind-tools

ENTRYPOINT ["/bin/bash"]
