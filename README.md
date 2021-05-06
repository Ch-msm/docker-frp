# docker-frp
基于docker容器的frp工具

### 客户端启动命令
```sh
docker run -d --name frp-client \
           -v ${PWD}/frpc.ini:/frpc.ini \
           --restart=always \
            meisiming/frp:v1 \
           ./frpc -c frpc.ini
```
### 服务器启动命令
```
docker run -d --name frp-server \
           -p 7000:7000 \
           -v ${PWD}/frps.ini:/frps.ini \
           --restart=always \
           meisiming/frp:v1 \
           ./frps -c frps.ini
```
