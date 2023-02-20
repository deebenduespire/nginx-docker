#!/bin/bash
echo "We can create a self-signed key and certificate pair with OpenSSL in a single command"
openssl req -x509 -nodes \
  -days 365 \
  -subj "/C=CA/ST=QC/O=Espire, Inc./CN=espire.com" \
  -addext "subjectAltName=DNS:espire.com" \
  -newkey rsa:2048 \
  -keyout /etc/ssl/private/nginx.key \
  -out /etc/ssl/certs/nginx.crt
sudo openssl dhparam \
  -out /etc/ssl/certs/nginx.pem 2048
