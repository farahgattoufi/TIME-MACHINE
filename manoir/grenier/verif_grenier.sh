#!/bin/bash

COFFRE_PATH="../coffre/box_de_lettres.tar.gz" 

if [ -f "$COFFRE_PATH" ]; then
    echo "Bravo ! Tu as archivé le carton de lettres et l’as bien rangé dans le coffre principal."
    echo "Assure-toi que tu as bien récupéré le fragment de code et relevé la prochaine destination où un autre défi t’attend !"
    exit 0
else
    echo "L’archive n’a pas été trouvée dans le coffre."
    echo "Vérifie la commande utilisée et l’emplacement du fichier !"
    exit 1
fi

