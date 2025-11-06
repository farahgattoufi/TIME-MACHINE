#!/bin/bash

#remise a 0 de laboratoire
cd "$(dirname "$0")"
# Suppression de l'ancien coffre (dossier ou fichier)
rm -rf ../coffre

# Suppression des dossiers d'outils dans laboratoire mais PAS les scripts
rm -rf armoire placard tiroir

# Création du laboratoire et sous-dossiers d'outils
mkdir -p armoire
mkdir -p placard
mkdir -p tiroir/box  # Pour la clé cachée

# Ajout des outils dans chaque sous-dossier
echo "Un microscope de précision" > armoire/microscope.txt
echo "Un thermomètre digital" > armoire/thermometre.txt
echo "Une balance électronique" > placard/balance.txt
echo "Une pipette graduée" > placard/pipette.txt
echo "Une clé rouillée" > tiroir/box/cle.txt    # Objet caché dans box/

