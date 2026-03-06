#!/bin/bash
# 备份机器C的 MySQL 数据库
BACKUP_DIR="/root/backup/mysql"
DATE=$(date +%Y%m%d%H%M)
mkdir -p $BACKUP_DIR
docker exec mysql8 mysqldump -u root -pYourRootPassword123 wordpress > $BACKUP_DIR/wordpress_$DATE.sql
# 可添加上传到 OSS 的命令