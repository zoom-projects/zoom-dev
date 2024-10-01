# zoom-dev

ZOOM 开发者文档

## 创建各模块硬链接

MacOS 下使用 `ln` 命令创建硬链接，如下：

```shell
ln -s ../zoom-app APP
ln -s ../zoom-support BASIC
```

Windows 下使用 `mklink` 命令创建硬链接，如下：

```shell
mklink /D APP ..\zoom-app
mklink /D BASIC ..\zoom-support
```
