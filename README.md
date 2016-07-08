MySQL on Docker with TMPFS.
============

The main goal for this container image is to provide a very fast 
mysql server which may be used for integration tests or other testing purposes. 
The storage for this mysql server uses an internal tmpfs. 
The size of this tmpfs ramdisk can be configured using the **TMPFS_SIZE** environment setting. 
This container should only be used for testing purposes.

> Please note that this container requires privileged permissions to mount the tmpfs

Example usage:
    docker pull yfix/mysql-tmpfs
    docker run -d --cap-add=ALL --privileged -e TMPFS_SIZE=300 -p 3307:3306 yfix/mysql-tmpfs
    mysql -u root -h 127.1 -P 3007

More info https://hub.docker.com/u/yfix/mysql-tmpfs/
