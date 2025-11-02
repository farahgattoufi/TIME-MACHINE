#!/bin/bash
LIMIT=1800
while [ $LIMIT -ge 0 ]; do
    echo "$((LIMIT/60)) min $((LIMIT%60)) sec restantes" > data/time.txt
    sleep 1
    LIMIT=$((LIMIT - 1))
done
echo -e "\n⏰ Temps écoulé ! Tu as perdu."
echo "0 min 0 sec restantes" > data/time.txt
pkill -P $PPID
exit 1
