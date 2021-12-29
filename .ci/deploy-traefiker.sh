#!/bin/sh
exec > /home/haidousm/hooks/traefiker/output.log 2>&1
docker pull haidousm/traefiker:1.0.0
cd ../traefik
docker-compose up -d
docker system prune -f
