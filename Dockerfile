FROM alpine:latest

LABEL maintainer="docker@soep.org"

COPY ./start-squid.sh /usr/local/bin/
COPY ./config/squid.conf /etc/squid/
COPY ./config/mime.conf /etc/squid/
COPY ./config/passwords /etc/squid/

RUN apk update \
    && apk add --no-cache squid curl \
    && chmod +x /usr/local/bin/start-squid.sh

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
