FROM debian:latest
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update
    && apt-get install -y nodejs \
    && apt-get install curl python build-essential git ca-certificates \
