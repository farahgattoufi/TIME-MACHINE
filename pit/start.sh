#!/bin/bash

# Prépare l’environnement en donnant l’exécution à tous les scripts .sh
for f in *.sh; do
  chmod +x "$f"
done

bash laboratoire/reset_labo.sh
bash bibliotheque/reset_bib.sh
bash atelier/reset_atelier.sh
bash grenier/reset_grenier.sh
rm -f ../jeu/nb_erreurs.txt

echo "
Bienvenue dans L’Aventure du Temps Égaré !
Une machine interdite menace d’effacer la réalité dans 30 minutes.
Ta mission : explorer les différentes pièces mystérieuses, utiliser les outils Unix pour résoudre les énigmes, 
collecter à chaque fois un outil et un fragment du code d’arrêt essentiel, 
et placer scrupuleusement chaque trouvaille dans ton coffre personnel (.coffre/).

Première étape : crée ton coffre pour garder ce que tu trouveras. (Indice : commande Unix pour créer un dossier)
Quand tu sens que tu es prêt à commencer l’aventure, rends visite au Gardien :
    bash gardien.sh
Bon voyage dans le manoir du Temps !"
