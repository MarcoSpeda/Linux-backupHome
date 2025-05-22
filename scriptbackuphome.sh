#!/bin/bash

# Data di inizio e fine (modifica le date come necessario)
START_DATE="2025-05-22"
END_DATE="2025-05-30"

# Data di oggi
TODAY=$(date +%F)

# Confronta le date
if [[ "$TODAY" < "$START_DATE" || "$TODAY" > "$END_DATE" ]]; then
    exit 0  # Esci senza fare nulla
fi

# Directory di origine e destinazione
SOURCE="/home/scripts/marcospedaliere"
DESTINATION="/opt/backupHome"

# Nome backup con data
DATE=$(date +'%Y-%m-%d')
BACKUP_NAME="backup_home_$DATE.tar.gz"

# Backup
tar -czf "$DESTINATION/$BACKUP_NAME" "$SOURCE"
