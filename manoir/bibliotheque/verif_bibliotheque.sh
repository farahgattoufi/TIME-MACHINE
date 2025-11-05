#!/bin/bash

MANU="../coffre/manuscrit.txt"


if [ -f "$MANU" ]; then
    if grep -qi "Le fragment du code est cinq" "$MANU"; then
        echo "Bravo, le manuscrit authentique est entre tes mains, et son vrai message est maintenant révélé."
        echo "Ta progression dans le manoir continue : Dans les hauteurs poussiéreuses du manoir, souvenirs et trésors s’accumulent."
        echo "Mais seuls les plus anciens veillent au-dessus de tout."
    else
        echo "⚠️ Tu n'as pas encore révélé le bon message dans le livre."
        echo "Relis, déchiffre, et édite le texte dans ton coffre !"
        exit 1
    fi
else
    echo "⚠️ Le bon livre n'est pas encore dans ton coffre."
    echo "Refais chaque étape : permissions, déplacement, décompression, décryption, édition."
    exit 1
fi

