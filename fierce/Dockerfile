FROM debian:jessie

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apt-get update && apt-get install -y \
    perl \
    build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Net::DNS'

COPY fierce/ /fierce
WORKDIR /fierce

ENTRYPOINT ["/usr/bin/perl", "fierce.pl"]
CMD ["-h"]
