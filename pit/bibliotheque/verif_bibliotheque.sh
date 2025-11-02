#!/bin/bash

MANU="coffre/manuscrit.txt"

if [ -f "$MANU" ]; then
    if grep -qi "Le fragment de code est cinq" "$MANU"; then
        echo "Bravo, le manuscrit authentique est entre tes mains, et son vrai message est maintenant révélé."
        echo "Ta progression dans le manoir continue : un souffle ancien t’attire vers l’atelier..."
    else
        echo "⚠️ Tu n'as pas encore révélé le bon message dans le manuscrit."
        echo "Relis, déchiffre, et édite le texte dans ton coffre !"
        exit 1
    fi
else
    echo "⚠️ Le manuscrit n'est pas encore dans ton coffre."
    echo "Refais chaque étape : permissions, déplacement, décompression, décryption, édition."
    exit 1
fi

