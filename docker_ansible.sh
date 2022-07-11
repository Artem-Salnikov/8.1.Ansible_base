#!/bin/bash
echo "Try to run docker containers and ansible-playbook"
sudo docker run -td --name fedora pycontribs/fedora:latest /bin/bash
sudo docker run -td --name ubuntu ubuntu:latest /bin/bash
sudo docker run -td --name centos7 centos:7 /bin/bash
sudo ansible-playbook site.yml -i inventory/prod.yml --vault-password-file /etc/pass/pass8.1
sudo docker stop fedora
sudo docker stop ubuntu
sudo docker stop centos7
echo success
