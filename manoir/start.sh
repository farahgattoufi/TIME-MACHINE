#!/bin/bash

rm -f ../.timer_start #sauvegarder le temps de debut de la session
# 1. Initialisation du chrono unique (créé UNE SEULE FOIS)
echo $(date +%s) > ../.timer_start

# 2. Durée max du jeu en secondes (50 min)
DUREE=3000

# 3. Timer automatique en arrière-plan
(
    sleep $DUREE

    echo -e "\n====================================="
    echo "Temps écoulé !"
    echo "La machine a bouleversé l'espace-temps, tu perds !"
    echo "GAME OVER"
    echo "====================================="
    rm -f ../.timer_start #effacer le temps de debut de la partie(remise a 0 du temps)
    bash reset.sh
    exit 1
    
) &

#Remise à 0 de toutes les parties et effacer le nombre d'erreurs de la session précédente.
bash laboratoire/reset_labo.sh
bash bibliotheque/reset_bib.sh
bash grenier/reset_grenier.sh
bash gallerie/reset_gallerie.sh
rm -f ../jeu/nb_erreurs.txt

echo "
Bienvenue dans L’Aventure du Temps Égaré !
Une machine interdite menace d’effacer la réalité dans 50 minutes.
Ta mission : explorer les différentes pièces mystérieuses du manoir pour en fin trouver la machine et l’arrêter avant qu’il ne soit trop tard.
Attention certaines pièces sont piégées et tu sera pénaliser si tu y rentres !" #cave, debarras et salle_d_etudes
Tu collecteras un outil et tu relèveras un fragment du code d'arrêt de la machine tout au long de ton chemin.

Commence par rendre visite au Gardien.
Bon voyage dans le manoir du Temps !"
