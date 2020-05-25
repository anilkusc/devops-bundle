#!/bin/bash
mkdir -p /volumes/jenkins
chmod -R 777 /var/run/docker.sock
chmod -R 777 /volumes/jenkins/
cd jenkins/ && docker build -t anilkuscu/jenkins . && cd ../
