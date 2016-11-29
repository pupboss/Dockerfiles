FROM debian:latest
RUN apt-get update -y \
    && apt-get install curl python build-essential git ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y nodejs \
    && apt-get upgrade
