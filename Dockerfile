FROM ruby:2.2.3
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

RUN useradd -ms /bin/bash ruby && \
    chown -R ruby:ruby /home/ruby && \
    mkdir -p /home/ruby/ssl_certs && \
    chown -R ruby:ruby /usr/local/bundle && \
    chown -R ruby:ruby /usr/local/lib/ruby

USER ruby
ENV HOME /home/ruby
# ENV HTTP_PROXY http://proxyurl_here

COPY .gemrc /home/ruby/
COPY ./ssl_certs /home/ruby/ssl_certs

RUN gem update --system && \
    gem install sass && \
    gem install compass
