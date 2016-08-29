#!/bin/bash

openvpn --daemon --config $1 && su - $SU_USERNAME
