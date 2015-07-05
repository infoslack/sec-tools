FROM alpine

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apk --update add nmap && rm -rf /var/cache/apk/*

ENTRYPOINT ["nmap"]
