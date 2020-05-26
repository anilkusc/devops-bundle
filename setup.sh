#!/bin/bash
mkdir -p /volumes/jenkins
mkdir -p /volumes/registry
chmod -R 777 /var/run/docker.sock
chmod -R 777 /volumes/jenkins/
cd jenkins/ && docker build -t anilkuscu/jenkins . && cd ../
##for docker http registry
touch /etc/docker/daemon.json && echo '{"insecure-registries" : ["192.168.1.50:30014"]}' >> /etc/docker/daemon.json
apt install apache2-utils -y
cd /volumes/registry/ && htpasswd -Bc registry.password testuser #testuser yerine kullanıcı adı girilir ve oluşturulacak şifre yazılır.
#create secret for pull images from local private registry
kubectl create secret docker-registry regcred  --docker-server=192.168.1.50:30014  --docker-username=testuser --docker-password=admin --docker-email=test@test.com
#create a yaml repo for yaml files
