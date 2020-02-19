#!/bin/bash
#######################################################
# Description: Customized Script
# Lisence: MIT
# Author: Tristan
# GitHub: https://wubin2.github.io/AutoBuild-CSCLEDE
#######################################################
#set CSCLEDE Basic Setting
#sed -i 's/192.168.1.1/192.168.1.2/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/CSCLEDE/g' openwrt/package/base-files/files/bin/config_generate
sed -i '34d' openwrt/package/lean/default-settings/files/zzz-default-settings
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./$1$GzaZpWin$e5M.CJ2ooGgDXrbQWltbd0/g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i '/^exit 0/i echo 0xDEADBEEF > /etc/config/google_fu_mode' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/CSCLEDE/g ; s/none/psk2/g' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/^EOF/i \            \set wireless.default_radio${devidx}.key=coolsong' openwrt/package/kernel/mac80211/files/lib/wifi/mac80211.sh
mv banner_csc openwrt/package/base-files/files/etc/banner
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile
#set luci-app-openclash to vpn menu
sed -i 's/services/vpn/g' openwrt/package/coolsong/luci-app-openclash/files/usr/lib/lua/luci/controller/*.lua
sed -i 's/services/vpn/g' openwrt/package/coolsong/luci-app-openclash/files/usr/lib/lua/luci/model/cbi/openclash/*.lua
sed -i 's/services/vpn/g' openwrt/package/coolsong/luci-app-openclash/files/usr/lib/lua/luci/view/openclash/*.htm
#set luci-app-ssr-plus to vpn menu
sed -i 's/services/vpn/g' openwrt/package/lean/luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/services/vpn/g' openwrt/package/lean/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/services/vpn/g' openwrt/package/lean/luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm
#set luci-app-openvpn to vpn menu
sed -i 's/services/vpn/g' openwrt/feeds/luci/applications/luci-app-openvpn/luasrc/controller/openvpn.lua
sed -i 's/services/vpn/g' openwrt/feeds/luci/applications/luci-app-openvpn/luasrc/model/cbi/openvpn.lua
sed -i 's/services/vpn/g' openwrt/feeds/luci/applications/luci-app-openvpn/luasrc/view/openvpn/pageswitch.htm
