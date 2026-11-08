#!/bin/bash
set -e

iface="${1:-wlan0}"
mac="02:$(od -An -N5 -tx1 /dev/urandom | tr -d ' \n' | sed 's/../&:/g; s/:$//')"

sudo ip link set dev "$iface" down
sudo ip link set dev "$iface" address "$mac"
sudo ip link set dev "$iface" up

echo "Neue MAC für $iface: $mac"
