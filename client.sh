#!/bin/bash
docker rm -f frp-client
docker run -d --name frp-client \
           -v ${PWD}/frpc.ini:/frpc.ini \
           --restart=always \
           meisiming/frp:v1 \
           ./frpc -c frpc.ini
