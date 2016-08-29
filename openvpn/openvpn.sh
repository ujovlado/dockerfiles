#!/bin/bash

SCRIPT_DIR=$(cd `dirname $0`; pwd -P)

if [ ! -f $SCRIPT_DIR/config/$1 ]; then
    echo "Specified config file not found"
else
    docker run -i -t --rm \
      --device "/dev/net/tun:/dev/net/tun" \
      -v "$SCRIPT_DIR/config:/etc/openvpn/config" \
      -v "/home/`id -un`/.ssh:/home/`id -un`/.ssh" \
      -w "/etc/openvpn/config" \
      --cap-add NET_ADMIN \
      --env SU_USERNAME=`id -un` \
      openvpn $1
fi
