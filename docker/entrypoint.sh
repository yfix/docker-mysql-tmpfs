#!/bin/bash

set -e

TMPFS_DIR=${TMPFS_DIR:-"/opt/tmpfs"}
TMPFS_SIZE=${TMPFS_SIZE:-"300"}

[[ ! -d "$TMPFS_DIR" ]] && mkdir -p $TMPFS_DIR
chown mysql:mysql $TMPFS_DIR
chmod -R 0700 $TMPFS_DIR
mount -t tmpfs -o defaults,size="${TMPFS_SIZE}m",relatime,uid=999,gid=1000,mode=0700 tmpfs $TMPFS_DIR

/usr/sbin/mysqld --user=mysql --datadir=$TMPFS_DIR --initialize-insecure --init-file=/etc/mysql/mysql-init.sql

exec "eatmydata" "$@"
