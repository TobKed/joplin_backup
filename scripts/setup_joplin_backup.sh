#!/bin/bash

# ${HOME}/code/joplin_backup/scripts/joplin_bak.sh
# 0 * * * * /Users/tobiaszkedzierski/code/joplin_backup/scripts/joplin_bak.sh >> /var/log/joplin_bak.log 2>&1

set -euo pipefail   
set -x

JOPLIN_BACKUP_SCRIPT_NAME="joplin.backup.sh"
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
JOPLIN_BACKUP="${SCRIPT_DIR}/${JOPLIN_BACKUP_SCRIPT_NAME}"


#://stackoverflow.com/a/17975418
croncmd="${JOPLIN_BACKUP} >> /var/log/${JOPLIN_BACKUP_SCRIPT_NAME%.sh}.log 2>&1"

cronjob="0 * * * * ${croncmd}"

# to add cronjob
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -

# to remove
#( crontab -l | grep -v -F "$croncmd" ) | crontab -

