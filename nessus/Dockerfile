FROM debian:jessie

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND noninteractive
ENV NESSUS_VERSION 6.6.0

RUN wget -O /tmp/Nessus-${NESSUS_VERSION}-debian6_amd64.deb \
    "https://downloads.nessus.org/nessus3dl.php?file=Nessus-${NESSUS_VERSION}-debian6_amd64.deb&licence_accept=yes&t=80353627d61a3b5eba37d24a49fde3c4"

RUN dpkg -i /tmp/Nessus-${NESSUS_VERSION}-debian6_amd64.deb

EXPOSE 8834

ENTRYPOINT [ "/opt/nessus/sbin/nessusd" ]
