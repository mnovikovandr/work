#!/bin/bash


cat /var/log/auth.log | grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" | sort | uniq -c
