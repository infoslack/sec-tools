FROM alpine

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apk add --update perl perl-net-dns \
      && rm -rf /var/cache/apk/*

COPY fierce/ /fierce
WORKDIR /fierce

ENTRYPOINT ["/usr/bin/perl", "fierce.pl"]
CMD ["-h"]
