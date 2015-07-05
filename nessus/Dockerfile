FROM debian:jessie

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND noninteractive
ENV NESSUS_VERSION 6.4.1

RUN wget -O /tmp/Nessus-${NESSUS_VERSION}-debian6_amd64.deb \
    "http://downloads.nessus.org/nessus3dl.php?file=Nessus-6.4.1-debian6_amd64.deb&licence_accept=yes&t=34958f1d2820ccf2c5465e4d71ce92ff"

RUN dpkg -i /tmp/Nessus-${NESSUS_VERSION}-debian6_amd64.deb

EXPOSE 8834

ENTRYPOINT [ "/opt/nessus/sbin/nessusd" ]
