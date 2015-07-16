FROM debian:jessie

MAINTAINER Daniel Romero <infoslack@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y wireshark && \
    rm -rf /var/lib/apt/lists/*

RUN dbus-uuidgen > /etc/machine-id
COPY init.lua /usr/share/wireshark/init.lua

RUN ldconfig
RUN mkdir /pcap

CMD ["wireshark"]
