#!/bin/bash

ansible-galaxy install -f -r requirements.yml

ansible-playbook -i ./inventory/cluster/hosts.ini ./install.yml