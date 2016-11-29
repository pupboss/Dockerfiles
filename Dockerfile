FROM debian:latest
RUN apt-get update \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
    && apt-get install curl python build-essential git ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs \
