#!/bin/sh
# https://stackoverflow.com/a/48280659/7092954
find ./release/conf/ -type f | perl -pe 'print $_; s/pfSense/libreSense/' | xargs -n2 sudo mv
sudo mv ./sys/amd64/conf/pfSense ./sys/amd64/conf/libreSense
# https://askubuntu.com/a/879323
perl -pe 's/cryptokeytest//g' ./tools/tools/crypto/Makefile
