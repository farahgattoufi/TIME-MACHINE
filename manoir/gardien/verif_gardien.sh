#!/bin/bash
if [ -d ../coffre ]; then
    echo "Sage décision : tu as créé ton coffre. Le temps presse !
    Pour ton 1er défis : Explore là où naissent les inventions et où l’imagination prend une vie à travers l’expérience.."
else
    echo "Il faut créer ton coffre dans le manoir!"
    exit 1
fi
