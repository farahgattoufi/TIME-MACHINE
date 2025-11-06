#!/bin/bash

#piece interdite =pénalisation 

#l'existance de ce compteur = le joueur a deja commis une erreur avant
COMPTEUR="../../.jeu/nb_erreurs.txt"
NBMAX=2

# Créer le dossier jeu si nécessaire (s'il s'agit de la 1ere erreur commise)
mkdir -p ../../.jeu

# Initialiser ou incrémenter le compteur
if [ ! -f "$COMPTEUR" ]; then
    echo 1 > "$COMPTEUR"
    NBE=1
else
    NBE=$(cat "$COMPTEUR")
    NBE=$((NBE+1))
    echo $NBE > "$COMPTEUR"
fi

if [ $NBE -ge $NBMAX ]; then
    echo "Erreur fatale : tu es entré trop souvent dans de mauvais endroits."
    echo "GAME OVER"
    rm -f "$COMPTEUR"
    # Appelle tous tes resets :
    cd ..
    bash laboratoire/reset_labo.sh
    bash bibliotheque/reset_bib.sh
    bash gallerie/reset_gallerie.sh
    bash grenier/reset_grenier.sh
    echo "Le jeu est intégralement remis à zéro. Tu dois recommencer !"
    exit 1
else
    RESTE=$((NBMAX-NBE))
    echo "Attention : ce n’est pas la bonne station."
    echo "Encore $RESTE essai(s) avant Game Over."
    
    exit 1
fi
