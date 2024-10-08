#!/bin/bash
function git_sparse_clone() {
branch="$1" rurl="$2" localdir="$3" && shift 3
git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
cd $localdir
git sparse-checkout init --cone
git sparse-checkout set $@
mv -n $@ ../
cd ..
rm -rf $localdir
}

function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

git clone --depth 1 https://github.com/kiddin9/openwrt-bypass && mvdir openwrt-bypass
# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall
git clone -b 18.06 --depth 1 https://github.com/kiddin9/luci-theme-edge
git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
git clone --depth 1 https://github.com/Dawneng/luci-app-clash
git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
git clone --depth 1 https://github.com/rufengsuixing/luci-app-onliner
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper
git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
git clone --depth 1 https://github.com/kuoruan/luci-app-kcptun
git clone --depth 1 https://github.com/jerrykuku/luci-app-ttnode
git clone --depth 1 https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff
git clone --depth 1 https://github.com/tty228/luci-app-serverchan
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot
git clone -b lede https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/esirplayground/LingTiGameAcc
git clone --depth 1 https://github.com/esirplayground/luci-app-LingTiGameAcc
git clone --depth 1 https://github.com/jefferymvp/luci-app-koolproxyR
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/Dawneng/luci-theme-atmaterial
git clone --depth 1 https://github.com/sirpdboy/luci-theme-opentopd && rm -rf luci-theme-opentopd/doc
git clone -b 18.06 --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone -b dev --depth 1 https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./;rm -rf OpenClash
git clone -b packages --depth 1 https://github.com/xiaorouji/openwrt-passwall && mv -n openwrt-passwall/* ./ ; rm -rf openwrt-passwall
git clone -b luci --depth 1 https://github.com/xiaorouji/openwrt-passwall && mv -n openwrt-passwall/* ./ ; rm -rf openwrt-passwall
git clone --depth 1 https://github.com/Dawneng/openwrt-subconverter && mv -n openwrt-subconverter/* ./ ; rm -rf openwrt-subconverter
git clone --depth 1 https://github.com/QiuSimons/openwrt-mos && mv -n openwrt-mos/luci-app-mosdns ./ ; rm -rf openwrt-mos


svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/v2raya
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-fileassistant
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-advanced
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-aliddns
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
svn co https://github.com/Dawneng/old-packages/trunk/luci-app-koolddns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-theme-ifit
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-control-timewol
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-control-webrestriction
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-control-weburl
svn co https://github.com/Lienol/openwrt-package/trunk/luci-app-kodexplorer
svn co https://github.com/Dawneng/old-packages/trunk/kcptun

mv -n openwrt-passwall/* ./ ; rm -rf openwrt-passwall
mv -n openwrt-package/* ./ ; rm -rf openwrt-package

rm -rf ./*/Screenshots
rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/*.md
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore

exit 0
