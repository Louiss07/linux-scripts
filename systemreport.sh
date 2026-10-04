#!/bin/bash
set -euo pipefail



ziel="$HOME/systemreports"
mkdir -p "$ziel"

datum=$(date +%Y-%m-%d-%H-%M)
logdatei="$ziel/systemreport.log"
laufen=$(uptime -p)
speicher=$(df -h /)
dateien=$(find "$HOME" -type f -size +1k 2>/dev/null | xargs -r du -h | sort -h | tail -n 5 || true)
prozesse=$(ps aux | wc -l)



{
echo "======$datum====="
echo "Uptime: $laufen"
echo ""
echo "Speicher:"
echo "$speicher"
echo ""
echo "Groesste Dateien:"
echo "$dateien"
echo ""
echo "Anzahl Prozesse: $prozesse"
echo ""
#echo "$logdatei"
#echo "$speicher"
#echo "$dateien"
#echo "$prozesse"

} >> "$logdatei"
