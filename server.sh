#!/bin/bash
docker rm -f frp-server
docker run -d --name frp-server \
           -p 7000:7000 \
           -v ${PWD}/frps.ini:/frps.ini \
           --restart=always \
           meisiming/frp:v1 \
           ./frps -c frps.ini
