FROM ruby:2.1.6

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN apt-get update && apt-get -y install \
        bison \
        libbison-dev \
        libpcap-dev \
        libpcap0.8 \
        libpcap0.8-dev \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

ENV NMAP_VERSION 6.47

RUN curl -O http://nmap.org/dist/nmap-${NMAP_VERSION}.tar.bz2 \
        && bzip2 -cd nmap-${NMAP_VERSION}.tar.bz2 | tar xvf - \
        && cd nmap-${NMAP_VERSION} \
        && ./configure && make && make install \
        && cd \
        && rm -rf nmap-${NMAP_VERSION}

RUN git clone --depth=1 https://github.com/rapid7/metasploit-framework.git \
        && cd metasploit-framework \
        && bundle install

ADD files/setup.sh /
RUN chmod +x /setup.sh

WORKDIR /metasploit-framework
ADD files/database.yml config/database.yml

EXPOSE 4444
CMD ["/setup.sh"]
