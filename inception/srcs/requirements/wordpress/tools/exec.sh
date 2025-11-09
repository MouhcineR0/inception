#!/bin/bash

apt install -y wget unzip

cd /var/www/html

wget https://wordpress.org/latest.zip

unzip latest.zip

rm latest.zip