#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
   echo "This script should be run as root."
   exit 1
fi

udevadm control --reload-rules && udevadm trigger
