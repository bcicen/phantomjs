#PhantomJS

FROM alpine:latest
MAINTAINER Bradley Cicenas <bradley.cicenas@gmail.com>

ENV PHANTOMJS_VERSION 2.1.1

RUN apk --update add bash tar bzip2 fontconfig ca-certificates && \
    rm -f /var/cache/apk/*

RUN wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 -O - \
    | tar -xjC /tmp/ && \
    mv /tmp/phantomjs*/bin/phantomjs /usr/bin/ && \
    rm -rf /tmp/*
