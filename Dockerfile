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
    pkg-config && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*
    
RUN wget http://archive.raspberrypi.org/debian/pool/main/p/pigpio/libpigpio-dev_1.71-0~rpt1_arm64.deb &&\
    wget http://archive.raspberrypi.org/debian/pool/main/p/pigpio/libpigpio1_1.71-0~rpt1_arm64.deb && \
    dpkg -i libpigpio1_1.71-0~rpt1_arm64.deb &&\
    dpkg -i libpigpio-dev_1.71-0~rpt1_arm64.deb && \
    rm libpigpio*_arm64.deb

WORKDIR /RPI
# EXPOSE 22
