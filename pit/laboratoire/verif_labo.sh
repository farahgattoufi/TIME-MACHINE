#!/bin/bash
COFFRE="../coffre/cle.txt"
ORI="../laboratoire/tiroir/box/cle.txt"
if [ -f $COFFRE ] && [ ! -f $ORI ]; then
    echo "Bravo, tu as trouvé la Clé et l’as rangée dans ton coffre ! Premier fragment du code : 3"
    echo "6" >> ../data/code_fragments.txt
    echo "Un souffle de poussière t’appelle… Peut-être qu’au milieu des vieux livres dort ton prochain défi."
else
    echo "La Clé doit être dans ton coffre et retirée de sa cachette.  
    (Tu dois la déplacer et la supprimer de son endroit d’origine)",
    exit 1
fi
