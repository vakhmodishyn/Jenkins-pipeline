#!/bin/sh
rm -R /usr/share/nginx/html/index.html
rm -R /usr/share/nginx/html/50x.html
echo "My name is Jone and I am 18 years old" > /usr/share/nginx/html/index.html
echo "\ndaemon off;" >> /etc/nginx/nginx.conf
service nginx start