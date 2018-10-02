#!/bin/bash

cmd=$1

function stop(){
  echo 'stop cmd'
  ps -ef | grep redis-serve | grep -v grep | awk '{print $2}'|xargs --no-run-if-empty kill -9
  ps -ef | grep redis-sentinel | grep -v grep | awk '{print $2}'|xargs --no-run-if-empty kill -9
  return ;
}

function start(){
  echo 'start cmd'
  /usr/local/redis/bin/redis-server /etc/redis/master.conf
  /usr/local/redis/bin/redis-server /etc/redis/slave1.conf
  /usr/local/redis/bin/redis-server /etc/redis/slave2.conf
  /usr/local/redis/bin/redis-sentinel /etc/redis/sentinel1.conf
  /usr/local/redis/bin/redis-sentinel /etc/redis/sentinel2.conf
  /usr/local/redis/bin/redis-sentinel /etc/redis/sentinel3.conf
  return ;
}

function restart(){
  echo 'restart cmd'
  stop ;
  sleep 3s;
  start ;
  return ;
}

case $cmd in
  start)
    start ;
    ;;
  stop)
    stop ;
    ;;
  restart)
    restart;
    ;;
  *)
    echo 'unkonow cmd'
  ;;
esac