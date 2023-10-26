#!/bin/bash

echo "10.0.2.2        virthost"
echo "192.168.56.10    server"

for i in $(seq 11 20);
do
  hostid=$(( $i - 10 ))
  echo "192.168.56.$i    cl$hostid"
done 
