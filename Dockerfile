FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ARG version=7.14.0

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-$version-linux-x86_64.tar.gz && \
mkdir logstash && \
tar -xf logstash-$version-linux-x86_64.tar.gz -C logstash --strip-components 1 && \
rm -rf logstash-$version-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

WORKDIR /opt/sh/logstash