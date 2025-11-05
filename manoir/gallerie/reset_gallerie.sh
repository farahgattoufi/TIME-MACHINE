#!/bin/bash
# Suppression des fichiers actuels de la galerie
cd "$(dirname "$0")"

rm -f tableau*
rm -f cle.txt
rm -f cadenas/cle.txt
mkdir -p cadenas
# Copie les originaux depuis le dossier backup (à adapter selon tes noms de fichiers)
cp ../../backup/tableau1.png .
cp ../../backup/tableau2.png .
cp ../../backup/tableau3.png .


