#!/bin/bash

#remise a 0 de bibliotheque

# Suppression et remise à zéro des sous-dossiers de la bibliothèque
cd "$(dirname "$0")"

rm -rf etagere
rm -rf pile

mkdir -p etagere
mkdir -p pile

# Livres avec faux codes, tous chiffrés (ecris a l'envers)
echo "xued tse edoc ud tnemgarf eL" > etagere/livreA.txt      # "Le fragment de code est deux"
gzip etagere/livreA.txt

echo "tpes : éhcac tnemgarF" > etagere/livreB.txt           # "Fragment caché : sept"
gzip etagere/livreB.txt

echo "…ervil ec à ecnifnoC sap siam eN" > pile/note.txt     # "Ne fais pas confiance à ce livre…"
gzip pile/note.txt

echo "ertauq tse edoc el ,icI" > pile/roman.txt               # "Ici, le code est quatre"
gzip pile/roman.txt

#le bon livre 
echo "qnic tse edoc ud tnemgarf eL" > etagere/manuscrit.txt # "Le fragment de code est cinq"
gzip etagere/manuscrit.txt
chmod 000 etagere/manuscrit.txt.gz

