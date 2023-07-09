#!/bin/bash

ansible-playbook -i ./inventory/cluster/hosts.ini ./reboot.yml
