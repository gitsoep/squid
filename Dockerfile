FROM alpine:latest

MAINTAINER docker@soep.org

RUN apk update \
    && apk add --no-cache squid \
    && apk add --no-cache curl

COPY start-squid.sh /usr/local/bin/
COPY ./config/squid.conf /etc/squid/
COPY ./config/mime.conf /etc/squid/
COPY ./config/passwords /etc/squid/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
