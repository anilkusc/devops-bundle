#!/bin/sh
response=$(curl operator.default.svc.cluster.local:8080)
if [ "$response" == "hello" ]; then
    echo "IT IS OK!"
else
    echo "test can not be done"
    exit 1
fi