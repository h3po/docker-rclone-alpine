![Docker Automated build](https://img.shields.io/docker/automated/h3po/rclone-alpine) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/h3po/rclone-alpine)

# docker-rclone-alpine
dockerized [rclone](https://rclone.org/) on alpine

## config
```
docker run --rm -it -v $(pwd):/config h3po/rclone-alpine --config /config/rclone.conf config
```
