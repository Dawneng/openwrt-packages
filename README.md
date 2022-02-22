## forked from [kenzok8/small-package](https://github.com/kenzok8/small-package),thanks!


#### 使用方式（三选一）：

1. 先cd进package目录，然后执行

```bash
git clone https://github.com/Dawneng/openwrt-packages
```
2. 或者添加下面代码到feeds.conf.default文件

```bash
sed -i '$a src-git dawneng https://github.com/Dawneng/openwrt-packages' feeds.conf.default
```
3. lede/下运行 或者openwrt/下运行

```bash
git clone https://github.com/Dawneng/openwrt-packages package/openwrt-packages
```










