#!/bin/bash

# Suppression et remise à zéro des sous-dossiers de la bibliothèque
rm -rf bibliotheque/etagere bibliotheque/pile bibliotheque/coffre

mkdir -p bibliotheque/etagere
mkdir -p bibliotheque/pile


# Livres avec faux codes, tous chiffrés en César 3
echo "Oh Iudjphqw gh frgh hvw ghx" > bibliotheque/etagere/livreA.txt      # "Le fragment de code est deux"
gzip bibliotheque/etagere/livreA.txt

echo "Iudjphqw fdfkh : vhsw" > bibliotheque/etagere/livreB.txt           # "Fragment caché : sept"
gzip bibliotheque/etagere/livreB.txt

echo "Qh idlv sdv frqildqfh à fh olyuh…" > bibliotheque/pile/note.txt     # "Ne fais pas confiance à ce livre…"
gzip bibliotheque/pile/note.txt

echo "Lfl, oh frgh hvw txdwu" > bibliotheque/pile/roman.txt               # "Ici, le code est quatre"
gzip bibliotheque/pile/roman.txt



# Manuscrit, vrai code en César 3 ("Le fragment de code est cinq")
echo "Oh iudjphqw gh frgh hvw flqt" > bibliotheque/etagere/manuscrit.txt # "Le fragment de code est cinq"
gzip bibliotheque/etagere/manuscrit.txt
chmod 000 bibliotheque/etagere/manuscrit.txt.gz

echo "reset bib done"