---
layout: post
title: "First on the Internet Counter Strike 2 Docker Image for ARM64"
author: Kacper Ochnik
date: 2023-10-19 23:00 +0200
tags: docker steamcmd emulation fex-emu arm64 cs2
---

# First on the Internet: Counter Strike 2 Docker Image for ARM64

I'm excited to announce a significant milestone in the world of Counter-Strike 2 (CS2) server hosting. In a groundbreaking move, I have successfully created the very first ARM64 Docker image for running a Counter-Strike 2 server. This achievement is a result of combining the power of Docker, SteamCMD, and the FEX-EMU emulator to bring the CS2 gaming experience to ARM64 devices.

## A New Horizon for CS2 Gaming

As a passionate gamer and developer, I've always been fascinated by the world of dedicated game servers. However, one challenge I faced was the lack of server hosting options for ARM64 architecture, which is becoming increasingly popular in the gaming community. This inspired me to embark on a journey to make CS2 accessible on ARM64 devices.

## The Ingredients

### Docker: The Containerization Solution

Docker, the industry-standard containerization platform, was the cornerstone of this project. It allowed me to encapsulate the CS2 server environment, making it highly portable and easy to deploy. With Docker, setting up a CS2 server becomes a breeze, even on ARM64.

### SteamCMD: The Game Server Magic

To host a CS2 server, I needed the game files, and SteamCMD was the key to obtaining them. It's a command-line tool provided by Valve for downloading and managing game server files. With SteamCMD, I could ensure that the server had the latest CS2 files, keeping it up to date and secure.

### FEX-EMU: The ARM64 Emulation

One of the challenges of bringing CS2 to ARM64 was its x86 architecture dependency. Enter FEX-EMU, an x86 emulator designed to run x86-64 Linux programs on non-x86 hardware. FEX-EMU bridged the architecture gap and made it possible to run the CS2 server on ARM64 devices.

## How to Get Started

The ARM64 Docker image for the CS2 server is now available on Docker Hub, making it accessible to the gaming community. Here's how you can get started:

1. **Pull the Image:** You can pull the CS2 server Docker image from DockerHub by running the following command:
   ```bash
   docker pull your-dockerhub-username/cs2-server:arm64
   ```
   Replace `your-dockerhub-username` with your Docker Hub username.

2. **Run the Server:** Once you have the image, start the server using the provided command. Don't forget to replace `INSERT_YOUR_LOGIN` with your Steam login credentials.

   ```bash
   docker run -it -p 27015:27015/tcp -p 27015:27015/udp -p 27020:27020/udp -p 27005:27005/udp -p 26900:26900/udp -e "login=INSERT_YOUR_LOGIN" your-dockerhub-username/cs2-server:arm64
   ```

3. **Enjoy Gaming:** Customize your server settings and configurations according to your preferences, and start enjoying CS2 gaming on your ARM64 device.

## Conclusion

The creation of the first ARM64 Docker image for the Counter-Strike 2 server is a significant step in expanding the horizons of gaming. It opens up new possibilities for game server hosting on ARM64 devices and bridges the gap between different architectures with the help of FEX-EMU.

I'm proud to share this achievement with the gaming community and look forward to seeing more players join the world of CS2 on ARM64. If you have any questions, need assistance, or want to get involved in further developments, please reach out. Happy gaming!

Stay tuned for more exciting updates and developments in the world of gaming and technology.
