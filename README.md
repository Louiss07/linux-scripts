# linux-scripts

Zwei Bash-Skripte von meinen Homeserver (Ubuntu Server auf
einem alten Laptop). Beide laufen per Cron Täglich bzw. Wöchentlich.

## systemreport.sh

Sammelt täglich Uptime, freien Speicherplatz, die fünf größten Dateien
im Home und die Anzahl laufender Prozesse und hängt alles mit Zeitstempel
an eine Logdatei an.

Der Sinn ist die Historie von anfang an zu haben.

## backups.sh

Packt ein übergebenes Verzeichnis als `.tar.gz` mit Datum im Dateinamen.

Datumsformat ist `%Y-%m-%d`, damit die Archive sich von selbst
chronologisch sortieren



## Beispiel aus dem Log (eine Woche)

======2026-09-28-00-00=====
Uptime: up 1 day, 12 hours, 52 minutes

Speicher:
Filesystem Size Used Avail Use% Mounted on
/dev/mapper/ubuntu--vg-ubuntu--lv 98G 7.1G 86G 8% /

Anzahl Prozesse: 148
