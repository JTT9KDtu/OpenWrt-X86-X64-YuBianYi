#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: trainSu
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.89.1/g' package/base-files/files/bin/config_generate
# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWrt24-X86-X64-IPV4/g' package/base-files/files/bin/config_generate

# Step 3: 修改默认时区
# 将默认时区从 "UTC" 修改为 "CST-8"
sed -i "s/'UTC'/'CST-8'/g" package/base-files/files/bin/config_generate

# Step 4: 增加时区名称设置为 "Asia/Shanghai"
# 在时区设置后添加区域名称设置
sed -i "/set system.\@system\[-1\].timezone='CST-8'/a\ \ \ \ set system.\@system\[-1\].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate
