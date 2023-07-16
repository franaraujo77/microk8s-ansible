#!/bin/bash

function updateKubeConfig {
    echo "Update kube config in server..."
    ssh ksys@192.168.15.101 "/snap/bin/microk8s.config > ~/.kube/config"

    echo "Download kube config from server..."
    scp ksys@192.168.15.101:~/.kube/config ~/.kube/config
}

ansible-galaxy install -f -r requirements.yml

ansible-playbook -i ./inventory/cluster/hosts.ini ./install.yml

if [ $? -eq 0 ]; then
    updateKubeConfig
fi