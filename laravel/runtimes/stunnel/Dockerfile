FROM alpine:3.16.2
LABEL maintainer="Guglielmo Frati"

RUN apk add --no-cache bash

RUN apk add --no-cache stunnel

RUN wget https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 \
    && mkdir -p /opt/confd/bin \
    && mv confd-0.16.0-linux-amd64 /opt/confd/bin/confd \
    && chmod +x /opt/confd/bin/confd \
    && export PATH="$PATH:/opt/confd/bin"


COPY start-container /usr/local/bin/start-container
RUN chmod +x /usr/local/bin/start-container

COPY confd /etc/confd
COPY cert.pem /etc/stunnel/cert.pem

EXPOSE 3129
ENTRYPOINT ["start-container"]
