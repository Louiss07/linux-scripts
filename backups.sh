#!/bin/bash
set -euo pipefail

if [ $# -eq 0 ]; then
	echo "Benutzung: $0 <ordner>" >&2
	exit 1
fi


quelle="$1"

if [ ! -d "$quelle" ]; then
        echo "Diesen namen gibts nicht" >&2
        exit 1
fi
ziel="$HOME/Backups"
mkdir -p "$ziel"

ordner=$(basename "$quelle")
datum=$(date +%Y-%m-%d)
archiv="$ziel/${ordner}_${datum}.tar.gz"


tar -czf "$archiv" "$quelle"


echo "Backup erstellt: $archiv"
du -h "$archiv"
