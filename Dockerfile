FROM honkdev/ubuntu-base:1.0.0

MAINTAINER HONK Technologies, Inc.

RUN apt-get -y update \
&& apt-get -y install \
  liblzma-dev \
  libmagickwand-dev \
  libcurl4-openssl-dev \
  libpq-dev \
  postgresql-9.5=9.5.4* \
  nginx=1.10.0* \
&& rm -rf /var/lib/apt/lists/*

# NodeJS LTS
RUN n 6.9.1

# Python 2.7.1
RUN pyenv install 2.7.1 && pyenv global 2.7.1

# Ruby 2.3.3
RUN rbenv install 2.3.1 && rbenv global 2.3.1
