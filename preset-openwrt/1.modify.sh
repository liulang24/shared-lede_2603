#!/usr/bin/env bash

# modify login IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/255.255.255.0/255.255.255.0/g' package/base-files/files/bin/config_generate

# copy uci-defaults script(s)
#cc# mkdir -p files/etc/uci-defaults
#cc# cp $(dirname $0)/uci-scripts/* files/etc/uci-defaults/

# modify default package(s)
#cc# if ! grep -q "dnsmasq-full" include/target.mk; then
#cc#     sed -i 's/dnsmasq/dnsmasq-full/g' include/target.mk
#cc# fi

# modify luci-app-xray category
#cc# modify_lax_category() {
#cc#     local mk=$1
#cc#     [ -e $mk ] || return
#cc#     sed -i 's/SECTION:=Custom/CATEGORY:=LuCI/g' $mk
#cc#     sed -i 's/CATEGORY:=Extra packages/SUBMENU:=3. Applications/g' $mk
#cc# }
#cc# modify_lax_category 'package/feeds/supply/luci-app-xray-core/Makefile'
#cc# modify_lax_category 'package/feeds/supply/luci-app-xray-status/Makefile'

# replace geodata source
. $(dirname $0)/../extra-files/update-geodata.sh
