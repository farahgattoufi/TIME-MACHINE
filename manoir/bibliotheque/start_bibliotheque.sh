#!/bin/bash

echo "===== BIBLIOTHÈQUE ====="
echo
echo "Des dizaines de livres rangés sur les étagères et dans la pile. Mais attention : tous sont codés."
echo "Trouve celui qui est **interdit dont personne ne peut consulter le contenu**." #find -perm 000 : etagere/manuscrit.txt.gz
echo
echo "Une fois trouvé :"
echo "- Débloque ses permissions" #chmod 755
echo "- Décompresse-le dans ton coffre pour révéler son message " #gunzip > coffre
echo "- Déchiffre son texte chiffré " #cat manuscrit.txt | rev 
echo "- Modifie le texte après déchiffrement dans ton coffre" # vi 
echo
echo "Pour déchiffrer le texte souviens-toi que parfois, il suffit de regarder les choses dans le sens opposé pour voir apparaître la vérité."
echo "Bonne chasse aux savoirs !"
echo