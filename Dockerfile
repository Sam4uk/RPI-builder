FROM arm64v8/debian:bookworm-slim AS rpi-builder
RUN dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get -y install \
    git \
    sudo \
    curl \
    wget \
    cmake \
    make \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    zsh \
    openssh-client openssh-server \
    iputils-ping 

EXPOSE 22
