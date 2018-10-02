#!/bin/bash
wget  https://cdn.mysql.com/archives/mysql-5.7/mysql-5.7.15-linux-glibc2.5-x86_64.tar.gz
mv mysql-5.7.15-linux-glibc2.5-x86_64.tar.gz ./mysql/
wget http://download.redis.io/releases/redis-4.0.9.tar.gz
mv redis-4.0.9.tar.gz ./redis/
# rm -rf ./*/*.tar.gz

