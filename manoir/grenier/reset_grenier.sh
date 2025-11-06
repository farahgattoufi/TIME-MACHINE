#!/bin/bash

#remise a 0 de grenier 
cd "$(dirname "$0")"

# Met à jour la date de modification de chaque lettre (sans modifier leur contenu)
touch -d "1972-11-09" box_de_lettres/lettre1.txt
touch -d "2001-06-07" box_de_lettres/lettre2.txt
touch -d "2005-12-01" box_de_lettres/lettre3.txt
touch -d "1995-04-04" box_de_lettres/lettre4.txt

# On efface uniquement l’archive du coffre
if [ -f ../coffre/box_de_lettres.tar.gz ]; then
    rm ../coffre/box_de_lettres.tar.gz
fi


