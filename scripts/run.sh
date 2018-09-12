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
  --mount source=postgres-backups,destination=/srv/postgres/backups \
  --rm pg-commands ./"$@"
