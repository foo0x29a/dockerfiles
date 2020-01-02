FROM debian:stretch-slim

LABEL image='foo0x29a/ansible'
LABEL tag='2.2'
LABEL ref='https://github.com/foo0x29a/dockerfiles'

RUN apt-get update && apt-get install -y \
    gnupg2 \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
  && apt-get update && apt-get install -y \
    ansible \
  && apt-get clean \
  && apt-get remove -y wget \
  && rm -rf /var/lib/apt/lists/*
