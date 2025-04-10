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
    libudev-dev libusb-1.0-0-dev \
    pkg-config &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /RPI
EXPOSE 22
