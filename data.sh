#!/bin/bash
sudo yum update -y
sudo yum install git -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "hello world from $(hostname -f)" > /var/www/html/index.html