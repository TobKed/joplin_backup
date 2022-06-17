#!/bin/bash
# https://discourse.joplinapp.org/t/best-method-to-backup-notes/1135/2

# 0 8 * * * /Users/tobiaszkedzierski/code/joplin_backup/scripts/joplin_bak.sh >> /var/log/joplin_bak.log 2>&1

set -euxo -pipefail

BACKUP_DIR="$( dirname "${BASH_SOURCE[0]}" )/../backups/"
JOPLIN_BIN="/usr/local/bin/joplin"

$JOPLIN_BIN sync
$JOPLIN_BIN e2ee decrypt

cd "$BACKUP_DIR"
rm -f *.md
rm -f resources/*
$JOPLIN_BIN --log-level debug export --format raw "$BACKUP_DIR"
git add .
git commit -m "Update $(date -u)"
git push

