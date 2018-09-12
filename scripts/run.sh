#!/usr/bin/env bash
test -t 1 && USE_TTY="-it"
docker run $USE_TTY \
  -e DB_NAME \
  -e DB_USER \
  -e DB_PASS \
  -e DB_HOST \
  -e BACKUP_DB_NAME \
  -e BACKUP_DB_USER \
  -e BACKUP_DB_PASS \
  -e BACKUP_DB_HOST \
  -e DB_TEMPLATE \
  -e BACKUP_DUMP \
  --mount type=bind,source=/var/local/postgres/backups,destination=/var/local/postgres/backups \
  --rm pg-commands ./"$@"
