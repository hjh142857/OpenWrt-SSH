#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon-mod/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/JDCloud/g' package/base-files/files/bin/config_generate

# 修改去除无用的mini和oem分区
sed -i "s/27328k/32448k/g" target/linux/ramips/image/mt7621.mk
curl https://raw.githubusercontent.com/hjh142857/OpenWrt-SSH/jdc1/mt7621_jdcloud_re-sp-01b.dts > target/linux/ramips/dts/mt7621_jdcloud_re-sp-01b.dts
