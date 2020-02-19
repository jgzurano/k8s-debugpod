FROM alpine:3.10

RUN apk add --no-cache --update \
    bash vim jq \
    curl ca-certificates \
    bind-tools openssh-client \
    python3 openjdk11-jre-headless \
    && pip3 install pipenv awscli \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip

# kafka-cli
RUN curl -s https://archive.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz | tar xvz \
    && mv kafka_2.12-2.2.1 kafka \
    && cp /usr/lib/jvm/java-11-openjdk/lib/security/cacerts /tmp/kafka.client.truststore.jks

COPY kafka/config/client.properties /kafka/config/
COPY .bashrc /root/

ENTRYPOINT [ "bash" ]
