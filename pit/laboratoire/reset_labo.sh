#!/bin/bash
# Suppression de l'ancien coffre (dossier ou fichier)
rm -rf coffre

# Suppression des dossiers d'outils dans laboratoire mais PAS les scripts
rm -rf laboratoire/armoire laboratoire/placard laboratoire/tiroir

# Création du laboratoire et sous-dossiers d'outils
mkdir -p laboratoire/armoire
mkdir -p laboratoire/placard
mkdir -p laboratoire/tiroir/box  # Pour la clé cachée

# Ajout des outils dans chaque sous-dossier
echo "Un microscope de précision" > laboratoire/armoire/microscope.txt
echo "Un thermomètre digital" > laboratoire/armoire/thermometre.txt
echo "Une balance électronique" > laboratoire/placard/balance.txt
echo "Une pipette graduée" > laboratoire/placard/pipette.txt
echo "Une clé rouillée" > laboratoire/tiroir/box/cle.txt    # Objet caché dans box/

echo "reset labo done"