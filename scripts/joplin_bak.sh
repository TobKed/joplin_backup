#!/bin/bash
# https://discourse.joplinapp.org/t/best-method-to-backup-notes/1135/2

# ${HOME}/code/joplin_backup/scripts/joplin_bak.sh
# 0 * * * * /Users/tobiaszkedzierski/code/joplin_backup/scripts/joplin_bak.sh >> /var/log/joplin_bak.log 2>&1

set -euxo 


SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
BACKUP_DIR="${SCRIPT_DIR}/../backups/"
JOPLIN_BIN="/usr/local/bin/joplin"

$JOPLIN_BIN sync
# $JOPLIN_BIN e2ee decrypt

cd "$BACKUP_DIR"
rm -f *.md
rm -f resources/*
$JOPLIN_BIN --log-level debug export --format raw "$BACKUP_DIR"
git add .
git commit -m "Update $(date -u)"
git push

