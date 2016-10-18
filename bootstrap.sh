#!/bin/bash
yum install -y httpd
setenforce 0
service httpd restart
