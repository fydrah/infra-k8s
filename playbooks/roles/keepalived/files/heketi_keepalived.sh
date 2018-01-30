#!/bin/bash
TYPE=$1
NAME=$2
STATE=$3
case $STATE in
        "MASTER") /usr/bin/systemctl start heketi
                  ;;
        "BACKUP") /usr/bin/systemctl stop heketi
                  ;;
        "FAULT")  /usr/bin/systemctl stop heketi
                  exit 0
                  ;;
        *)        /sbin/logger "heketi unknown state"
                  exit 1
                  ;;
esac
