FROM ruby:2.2.2

MAINTAINER Daniel Romero <infoslack@gmail.com>

RUN git clone https://github.com/wpscanteam/wpscan.git

WORKDIR /wpscan

RUN bundle install --without test --path vendor/bundle

ENTRYPOINT ["/usr/local/bin/ruby", "wpscan.rb"]
