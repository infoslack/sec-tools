FROM debian:jessie

MAINTAINER Daniel Romero <infoslack@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    git \
    openssl \
    perl \
    libnet-ssleay-perl \
    openssl \
    libauthen-pam-perl \
    libio-pty-perl \
    libdigest-md5-file-perl && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/sullo/nikto.git

WORKDIR /nikto/program
ENTRYPOINT ["/usr/bin/perl", "nikto.pl"]
