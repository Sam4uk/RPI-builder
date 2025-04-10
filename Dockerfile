FROM arm64v8/debian:bookworm-slim AS rpi-builder
RUN apt-get update && \
    apt-get -y --no-install-recommends  install \
    ca-certificates \
    git \
    sudo \
    curl \
    wget \
    cmake \
    make \
    gcc \
    g++ \
    zsh \
    openssh-client openssh-server \
    iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 22
