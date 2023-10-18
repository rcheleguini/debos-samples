#!/bin/sh

adduser --gecos debian \
  --disabled-password \
  --shell /bin/bash \
  debian
adduser debian sudo
echo "debian:debian" | chpasswd
