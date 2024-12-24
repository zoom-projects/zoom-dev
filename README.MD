# zoom-dev

ZOOM 开发环境

## 环境准备

ZOOM 开发环境依赖于以下工具：

- [jdk17](https://www.oracle.com/java/technologies/javase-jdk17-downloads.html)
- [maven](https://maven.apache.org/download.cgi)
- [docker](https://docs.docker.com/get-docker/)
- [docker-compose](https://docs.docker.com/compose/install/)

## 启动准备

在 [./infra](./infra) 目录下执行以下命令，启动依赖服务：

```docker
docker-compose up -d
```

## 启动服务

1. 先执行`zoom-pom`模块下的`mvn install`命令
2. 在启动其他`RPC-Server`
3. 最后启动`APP`模块下的`ZoomApp`类

## sql

所有的sql文件都在[./sql](./sql)目录下
