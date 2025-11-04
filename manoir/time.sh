#!/bin/bash
DUREE=40
if [ ! -f "../.timer_start" ]; then
    echo "Le timer n'est pas initialisé."
    exit 1
fi
START=$(cat ../.timer_start)
NOW=$(date +%s)
ECoule=$((NOW - START))
MIN=$((ECoule / 60))
SEC=$((ECoule % 60))
echo "Temps écoulé : $MIN minute(s) et $SEC seconde(s) sur 50 minutes."

