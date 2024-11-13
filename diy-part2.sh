#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: trainSu
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/hostname='OpenWrt'/hostname='immortalwrt-XIAOMI-AX3000T'/g' package/base-files/files/bin/config_generate

