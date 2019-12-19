#!/bin/bash
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script

echo "Comment t'appel tu ?"
read nom # attend un retour utilisateur

echo "as tu des enfants ?"
read enfants

# || == OU
# && == ET

if [[ $enfants == "oui" ]] || [[ $enfants == "Oui" ]]
then
  echo "bravo"
else
  echo "dommage"
fi

echo "tu as quel ages $nom"
read age

#verifie les egaliter avec les chifres
# -lt = plus petit que
# -gt = plus grand que
# -le = plus petit ou egal
# -ge = plus grand ou egal

if [[ $age -ge 18 ]]
then
  echo "tu peux entrer"
else
  echo "degage"
fi

#types de variables
# str > string => chaine de caractaire
# int => integer => entiers
# loa => nombre a virgu = 44.44, 23.66
# bool => boolean = fales(0), tru(1)
