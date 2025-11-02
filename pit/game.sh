#!/bin/bash
echo "=== Aventure Unix ==="
echo "Commence par créer ta cachette (mkdir .armory)."
read -p "Appuie sur Entrée après avoir créé '.armory'... "
bash gardien.sh
cd cave
bash start_cave.sh
bash verif_cave.sh || exit 1
cd ../crypte
bash start_crypte.sh
bash verif_crypte.sh || exit 1
cd ../caves_temps
bash start_caves.sh
bash verif_caves.sh || exit 1
cd ../tour_horloge
bash start_horloge.sh
bash verif_horloge.sh || exit 1
cd ../jardin_ombres
bash start_boss.sh
bash verif_boss.sh

