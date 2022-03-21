FROM jenkinsci/blueocean:latest

USER root

ENV PATH $PATH:/usr/local/go/bin:/usr/local/mvn/bin
ENV GOLANG_VERSION 1.18

ADD go1.18.linux-amd64.tar.gz /usr/local/

RUN echo "https://mirrors.aliyun.com/alpine/v3.15/main/" > /etc/apk/repositories \
    && echo "https://mirrors.aliyun.com/alpine/v3.15/community/" >> /etc/apk/repositories \
    && apk add --no-cache maven gradle

USER jenkins