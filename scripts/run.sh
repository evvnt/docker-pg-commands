#!/usr/bin/env bash
docker run -it \
  -e DB_NAME \
  -e DB_USER \
  -e DB_PASS \
  -e DB_HOST \
  -e BACKUP_DB_NAME \
  -e BACKUP_DB_USER \
  -e BACKUP_DB_PASS \
  -e BACKUP_DB_HOST \
  -e DB_TEMPLATE \
  --mount source=postgres-backups,destination=/srv/postgres/backups \
  --rm pg-commands ./$1
