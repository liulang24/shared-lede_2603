#!/usr/bin/env bash

# modify login IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/255.255.255.0/255.255.255.0/g' package/base-files/files/bin/config_generate
#
##### uci set network.lan.netmask='255.255.255.0'
##### uci set network.lan.ipaddr='192.168.31.1/24'
##### uci commit network
#
# replace geodata source
. $(dirname $0)/../extra-files/update-geodata.sh
