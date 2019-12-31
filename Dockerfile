FROM ubuntu:19.10

RUN dpkg --add-architecture i386

RUN apt update && apt install -y \
    wine \
    winetricks \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash wineuser

USER wineuser
