#!/bin/bash
CODE="8352"
for OBJET in Amulette Lampe Livre Sablier Rouage; do
    if [ ! -f ../.armory/$OBJET ]; then
        echo "Il manque $OBJET dans .armory/."
        exit 1
    fi
done
echo "Entre le code secret :"
read USER_CODE
if [ "$USER_CODE" == "$CODE" ]; then
    echo "VICTOIRE 🎉 Tu as triomphé du Labyrinthe Bash !"
else
    echo "Ce n’est pas le bon code. Retente ta chance..."
    exit 1
fi
