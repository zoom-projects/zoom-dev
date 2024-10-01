# zoom-dev

ZOOM 开发者文档

## 创建各模块硬链接

MacOS 下使用 `ln` 命令创建硬链接，如下：

```shell
git clone https://github.com/hb0730/zoom-app.git zoom-app
git clone https://github.com/hb0730/zoom-support.git zoom-support
git clone https://github.com/hb0730/zoom-dev.git zoom-dev
cd zoom-dev
ln -s ../zoom-app APP
ln -s ../zoom-support BASIC
ln -s ../zoom-env ENV
```

Windows 下使用 `mklink` 命令创建硬链接，如下：

```shell
git clone https://github.com/hb0730/zoom-app.git zoom-app
git clone https://github.com/hb0730/zoom-support.git zoom-support
git clone https://github.com/hb0730/zoom-dev.git zoom-dev
cd zoom-dev
mklink /D APP ..\zoom-app
mklink /D BASIC ..\zoom-support
mklink /D ENV ..\zoom-env
```
