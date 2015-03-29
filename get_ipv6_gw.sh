#!/bin/sh
IF=`nvram get wan_ifname`
GW=`ip -6 neigh | grep $IF | awk '{print $1}'`
#GW=`ip -6 neigh | grep $IF | awk '{print $1}'`
for i in $GW; do
    echo route -A inet6 add ::/0 gw $i $IF
  done
done
