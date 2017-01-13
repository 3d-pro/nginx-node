Nginx Mainline /w NodeJS 7.x image of Debian Sid [![Build Status](https://travis-ci.org/3d-pro/nginx-node.svg?branch=master)](https://travis-ci.org/3d-pro/nginx-node)

## Required Docker Images
- nginx

## Build
```
  docker build -t nginx-node:latest .
```
## Run
```
  docker run -d -p 8080:80 -p 4433:443 -h nginx-node --name nginx-node nginx-node:latest
```
