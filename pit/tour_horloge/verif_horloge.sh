#!/bin/bash
if [ -f ../.armory/Rouage ]; then
    echo "Rouage débloqué ! Fragment code : 2"
    echo "2" >> ../data/code_fragments.txt
    echo "Dernier combat : Jardin des Ombres !"
else
    echo "Rouage absent ou non déplacé."
    exit 1
fi
