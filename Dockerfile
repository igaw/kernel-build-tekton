FROM debian:buster
MAINTAINER "Daniel Wagner" <dwagner@suse.de>

ARG DEBIAN_FRONTEND=noninteractive

# SSL / HTTPS support
RUN apt-get update && apt-get install --no-install-recommends -y \
    apt-transport-https \
    ca-certificates

# Host build tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    bash \
    bc \
    bison \
    bsdmainutils \
    ccache \
    cpio \
    flex \
    g++ \
    gcc \
    git \
    kmod \
    libssl-dev \
    libelf-dev \
    lzop \
    make \
    rsync \
    tar \
    u-boot-tools \
    wget \
    xz-utils
