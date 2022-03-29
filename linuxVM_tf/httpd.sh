#!/bin/sh
sudo su
apt-get update
apt-get install apache2 -y
systemctl enable apache2
systemctl start apache2

