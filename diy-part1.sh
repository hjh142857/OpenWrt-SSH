#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
#echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

# DIY package
mkdir package/diy

mkdir package/nas
mkdir package/nas_luci
git clone https://github.com/linkease/nas-packages package/nas
git clone https://github.com/linkease/nas-packages-luci package/nas_luci
mv package/nas/network/services/ddnsto package/diy/
mv package/nas_luci/luci/luci-app-ddnsto package/diy/
rm -rf package/nas
rm -rf package/nas_luci
