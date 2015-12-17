FROM ruby:2.2.3
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

# Add the user 'ruby' in the system and 
# let it access all the folders needed by ruby/gem/bundle
RUN useradd -ms /bin/bash ruby && \
    chown -R ruby:ruby /home/ruby && \
    mkdir -p /home/ruby/ssl_certs && \
    chown -R ruby:ruby /usr/local/bundle && \
    chown -R ruby:ruby /usr/local/lib/ruby

# Set 'ruby' as the user for this docker image
USER ruby
ENV HOME /home/ruby

# ENV HTTP_PROXY http://proxyurl_here

# Copy the config file and certificates in the home directory
COPY .gemrc /home/ruby/
COPY ./ssl_certs /home/ruby/ssl_certs

RUN gem update --system && \
    gem install sass && \
    gem install compass
