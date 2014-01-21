#!/bin/sh

curl -F "action=release" "192.168.1.1/rstatus.tri"

sleep 5

curl -F "action=renew" "192.168.1.1/rstatus.tri"

sleep 3

curl -F "action=renew" "192.168.1.1/rstatus.tri"
