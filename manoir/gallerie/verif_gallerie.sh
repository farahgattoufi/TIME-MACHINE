#!/bin/bash
if [ ! -f tableau1.png ] && [ -f "cadenas/cle.txt" ]; then
    echo "Bravo, tu as trouvé la machine cachée derrière ce tableau."
    read -p "Entre le code d’arrêt (1 seule chance) : " answer
    if [ "$answer" == "3517" ]; then
        echo "BRAVO! La machine s'arrête."
        echo "Tu as gagné! : l’ordre du temps est restauré dans le manoir, et ton nom restera gravé dans la légende."
        bash ../time.sh
        bash ../reset.sh
        exit 1
    else
        echo "========  GAME OVER  ========"
        echo "Oh non... Le code était FAUX ! La machine de temps n’a pas été arrêtée, et le passé comme le futur se brouillent irréversiblement."
        echo "Tente ta chance lors d’une nouvelle session avec start.sh"
        bash ../time.sh
        bash ../reset.sh
        exit 1
    fi
elif [ -f tableau1.png ] && [ -f "cadenas/cle.txt" ]; then
    echo "Non, la machine n’est pas cachée derrière ce tableau ! Tu ne trouves qu’un mur ordinaire derrière."
elif [ ! -f "cadenas/cle.txt" ] && [ ! -f tableau1.png ]; then
    echo "T'as oublié de glisser la clé dans le cadenas."
else
    echo "Il faut glisser la clé dans le cadenas et enlever le tableau derrière lequel se trouve la machine."
fi

