#!/usr/bin/env bash

echo "Starting $1 containers"
port_start=44000

for i in `seq 1 $1`; do
  echo "Starting container $i on $port_start"
  docker run -dp $port_start:8888 wblankenship/dockeri.co:latest
  port_start=$(($port_start+1))
done
