#!/bin/bash
COFFRE="../coffre/cle.txt"
ORI="../laboratoire/tiroir/box/cle.txt"
if [ -f $COFFRE ] && [ ! -f $ORI ]; then
    echo "Bravo, tu as trouvé la Clé et l’as rangée dans ton coffre ! Premier fragment du code : 3"
    echo 
    echo "Ton prochain défi t’attend là où l’on cherche le savoir parmi les livres que le temps a oubliés..."
else
    echo "La Clé doit être dans ton coffre et retirée de sa cachette."
    exit 1
fi
