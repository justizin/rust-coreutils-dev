#!/bin/sh

cd /usr/lib/cargo/bin/coreutils/
for f in *; do
# `install -b` doesn't work once coreutils' install is in place :)
#  install -b $f /usr/bin/
  install $f /usr/bin/
done