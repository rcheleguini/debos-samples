#! /usr/bin/env bash

VERSION=$(ls -v /boot/vmlinuz-* | tail -n 1 | cut -d'-' -f2-)
VMLINUZ=$(ls -v /boot/vmlinuz-* | tail -n 1)

kernel-install add $VERSION $VMLINUZ
