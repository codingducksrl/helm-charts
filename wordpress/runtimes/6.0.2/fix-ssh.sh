#!/usr/bin/env bash

BASE_DIR="/var/www"

# Default SSH keys for the container
if [ ! -z "$OWNER" ]; then
  mkdir $BASE_DIR/.ssh
  curl "https://github.com/$OWNER.keys" >$BASE_DIR/.ssh/authorized_keys
  service ssh start
  service squid start
fi
# End default SSH keys for the container