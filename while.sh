#!/bin/bash
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script

#decalration de la variable
answer=0

#boucle tant que 
while [[ $answer != "Oui" ]] && [[ $answer != "Non" ]] #il faut repondre oui ou non
do
    echo "Es tu idiot ?"
    read answer
done
echo "Vous etes sortie du script !!!"