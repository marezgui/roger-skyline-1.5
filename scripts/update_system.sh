#!/bin/bash

echo "apt-get update : " > /var/log/update_script.log 2>&1

apt-get update >> /var/log/update_script.log 2>&1

echo "apt-get upgrade : " >> /var/log/update_script.log 2>&1

apt-get upgrade >> /var/log/update_script.log 2>&1
