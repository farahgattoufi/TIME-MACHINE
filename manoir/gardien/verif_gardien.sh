#!/bin/bash
if [ -d ../coffre ]; then
    echo "Sage décision : tu as créé ton coffre. Le temps presse !
    Premier défi : explore là où naissent les inventions et où la Clé t’attend.
    Elle seule ouvrira le chemin vers la prochaine énigme..."
else
    echo "Il faut créer ton coffre dans le manoir!"
    exit 1
fi
