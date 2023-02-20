# Nginx

Nginx with SSL

-----
[![Docker Stars](https://img.shields.io/docker/stars/espire/nginx.svg?style=flat)](https://hub.docker.com/r/espire/nginx/)
[![Docker Pulls](https://img.shields.io/docker/pulls/espire/nginx.svg?style=flat)](https://hub.docker.com/r/espire/nginx/)

## Default

Without any volumes Nginx listen IPv4 and IPv6 on both ports 80/443 and serve 444 No content.

## Usage

```sh
docker run \
    -p 80:80 \ 
    -p 443:433 \
    -v /path/to/site:/etc/nginx/sites.d/site \
    --name nginx \
    espire/nginx:latest
```