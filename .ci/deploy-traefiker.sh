#!/bin/sh
exec > /home/haidousm/hooks/traefiker/output.log 2>&1
docker pull haidousm/traefiker:SNAPSHOT
cd /home/haidousm/haidousm.com/traefik
docker-compose up -d
docker system prune -f
