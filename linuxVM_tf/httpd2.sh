#!/bin/sh
sudo su
apt-get update
apt-get install mini-httpd -y
systemctl enable mini-httpd
systemctl start mini-httpd