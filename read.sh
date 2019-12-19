#!/bin/bash 
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script

echo "Salut, c'est quoi ton  prenom ?"
read prenom
echo  "salut" $prenom "c'est quoi ton nom ?"
read nom
echo "enchanter" $prenom $nom "c'est quoi ton age ?" 
read age
echo "tu as" $age "? t'es vieux!!"
echo "tu fais quoi dans la vie ?"
read travail
echo "Tu bosse dans" $travail "? Mais ca n'a pas d'avenir !! t'en pense quoi"
read $reponse
echo "c'est pas une reponse ca !! en faite tu n'en sais rien !! aller by "

