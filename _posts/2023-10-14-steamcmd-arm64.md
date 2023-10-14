---
layout: post
title: "Creating the First ARM64 Docker Image for SteamCMD: A Journey with FEX Emu"
author: Kacper Ochnik
date: 2023-10-14 20:00 +0200
tags: docker steamcmd emulation fex-emu arm64
---
In the ever-evolving world of technology, versatility and adaptability are key. Docker containers have revolutionized software deployment, enabling developers to easily package and distribute applications across various platforms. However, sometimes you may find yourself facing compatibility challenges when trying to run applications designed for one architecture on another. One such challenge arises when you need to run SteamCMD on ARM64 architecture. But where there's a will, there's a way, and through ingenuity and the power of emulation, you can overcome these hurdles.

In this article, we'll explore how I created the first ARM64 Docker image for SteamCMD, thanks to the incredible capabilities of FEX Emu. I'll provide you with a Dockerfile that you can use to run SteamCMD seamlessly on an ARM64 system.

All this started just because I bought that Orange Pi 5 Plus running on arm64 and I wanted to run a Project Zomboid server on it. I couldn't find anywhere a docker image for SteamCMD running on arm64, so I decided to create one myself.

### The Challenge: Running SteamCMD on ARM64

SteamCMD is a powerful command-line tool used for managing game servers and downloading game content from Steam. However, it is primarily designed for x86-64 architecture. So, if you're running an ARM64-based system, you'd typically face compatibility issues. This is where FEX Emu comes to the rescue.

### Meet FEX Emu

[FEX Emu](https://github.com/FEX-Emu/FEX) is an x86-64 emulator, designed to run x86-64 code on non-x86 systems. With the help of this incredible tool, you can effectively bridge the compatibility gap and run SteamCMD seamlessly on ARM64 architecture.

### The Dockerfile

Here's the Dockerfile you can use to create an ARM64 Docker image for SteamCMD using FEX Emu:

```Dockerfile
# Use the official Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    cmake \
    ninja-build \
    pkg-config \
    ccache \
    clang \
    llvm \
    lld \
    binfmt-support \
    libsdl2-dev \
    libepoxy-dev \
    libssl-dev \
    python-setuptools \
    g++-x86-64-linux-gnu \
    nasm \
    python3-clang \
    libstdc++-10-dev-i386-cross \
    libstdc++-10-dev-amd64-cross \
    libstdc++-10-dev-arm64-cross \
    squashfs-tools \
    squashfuse \
    libc-bin \
    expect \
    curl \
    sudo \
    fuse

# Create a new user and set their home directory
RUN useradd -m -s /bin/bash fex

RUN usermod -aG sudo fex

RUN echo "fex ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/fex

USER fex

WORKDIR /home/fex

# Clone the FEX repository and build it
RUN git clone --recurse-submodules https://github.com/FEX-Emu/FEX.git && \
    cd FEX && \
    mkdir Build && \
    cd Build && \
    CC=clang CXX=clang++ cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DUSE_LINKER=lld -DENABLE_LTO=True -DBUILD_TESTS=False -DENABLE_ASSERTIONS=False -G Ninja .. && \
    ninja

WORKDIR /home/fex/FEX/Build

RUN sudo ninja install && \
    sudo ninja binfmt_misc_32 && \
    sudo ninja binfmt_misc_64

RUN sudo useradd -m -s /bin/bash steam

USER steam

WORKDIR /home/steam/.fex-emu/RootFS/

# Set up rootfs

COPY Ubuntu_22_04.tar.gz ./

RUN tar xzf Ubuntu_22_04.tar.gz

RUN rm ./Ubuntu_22_04.tar.gz

WORKDIR /home/steam/.fex-emu

RUN echo '{"Config":{"RootFS":"Ubuntu_22_04"}}' > ./Config.json

WORKDIR /home/steam/Steam

# Download and run SteamCMD
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

ENTRYPOINT FEXBash ./steamcmd.sh
```

This Dockerfile includes all the necessary steps to install FEX Emu, set up the required 32-bit libraries, download SteamCMD, and run it through FEX Emu. You can customize it further based on your needs and the game server you intend to run.

### Conclusion

With this Dockerfile and the power of FEX Emu, you can now easily create an ARM64 Docker image for SteamCMD. This opens up new possibilities for running game servers and managing game content using SteamCMD on a wider range of systems, making it more accessible and versatile for developers and gamers alike.

You can get the complete docker image from [Docker Hub](https://hub.docker.com/r/teriyakigod/steamcmd) or build it from [here](https://github.com/TeriyakiGod/steamcmd-docker-arm64)