#!/usr/bin/env bash

set -e
set -o pipefail

docker run \
  --rm \
  -ti \
  -e MMA17_MYSQL_HOST \
  -e MMA17_MYSQL_USER \
  -e MMA17_MYSQL_PASS \
  -v /data/17mma.com/center/data:/webroot/center/data \
  -v /data/17mma.com/home/data:/webroot/home/data \
  -v /data/17mma.com/home/attachment:/webroot/home/attachment \
  -p 8080:80 \
  -e VIRTUAL_HOST=17mma.zixia.net,*.17mma.zixia.net \
  -e LETSENCRYPT_HOST=17mma.zixia.net, \
  -e HTTPS_METHOD=noredirect \
  --entrypoint bash \
  17mma.com

  #ghcr.io/zixia/17mma.com
