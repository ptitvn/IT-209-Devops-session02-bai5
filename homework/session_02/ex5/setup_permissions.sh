#!/bin/bash
# Chạy trên VPS với quyền root: bash setup_permissions.sh
set -e
id devops >/dev/null 2>&1 || adduser --disabled-password --gecos "" devops
chown -R devops:www-data /var/www/ptit-web
find /var/www/ptit-web -type d -exec chmod 750 {} \;   # thư mục: rwx r-x ---
find /var/www/ptit-web -type f -exec chmod 640 {} \;   # file:     rw- r-- ---
ls -la /var/www/ptit-web/
ls -la /var/www/ptit-web/html/
