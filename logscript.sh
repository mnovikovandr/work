#!/bin/bash


cat /var/log/auth.log | grep -i "Accepted publickey for azureuser from" | grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" | sort -u | wc -l
