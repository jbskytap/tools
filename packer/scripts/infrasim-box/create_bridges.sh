#!/bin/bash
# This file creates two bridges br0 and br1 on your system
cat >> /etc/network/interfaces <<EOF
auto br0
iface br0 inet dhcp
bridge_ports enp0s9
bridge_fd 0
bridge_hello 1
bridge_stp off

auto br1
iface br1 inet dhcp
bridge_ports enp0s10
bridge_fd 0
bridge_hello 1
bridge_stp off


source /etc/network/interfaces.d/*

EOF

