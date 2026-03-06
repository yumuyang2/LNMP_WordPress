#!/bin/bash
# 从机器A同步 WordPress 文件到机器B
RSYNC_CMD="rsync -avz --delete /root/docker/www/wordpress/ root@172.26.51.247:/root/docker/www/wordpress/"
$RSYNC_CMD
ssh root@172.26.51.247 "chown -R 33:33 /root/docker/www/wordpress"