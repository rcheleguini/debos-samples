#!/bin/bash

set -e

# Network management
systemctl enable systemd-networkd
# DNS resolving
systemctl enable systemd-resolved
# NTP client
systemctl enable systemd-timesyncd

chmod 0644 /etc/systemd/network/wired.network

ln -sf /lib/systemd/resolv.conf /etc/resolv.conf
