FROM debian:latest
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime \
    && apt-get update \
    && apt-get install -y curl python build-essential git ca-certificates zip \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean && apt-get autoclean -y && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \