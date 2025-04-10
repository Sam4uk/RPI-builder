FROM arm64v8/debian:bookworm-slim AS rpi-builder
RUN apt-get update && \
    apt-get -y --no-install-recommends  install \
    git \
    sudo \
    curl \
    wget \
    cmake \
    make \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    zsh \
    openssh-client openssh-server \
    iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 22
