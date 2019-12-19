#!/bin/bash
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script

rand=$(shuf -i1-100 -n1)
echo $rand
rand2=$(shuf -i1-100 -n1)
echo $rand2
randPlace=$(shuf -i1-3 -n1)
echo $randPlace

echo "veuillez entrer l'operation que vous souhaitez faire (+, -, *)"
read operateur

echo "entrer le nombre que vous voulez caluler"
read premierNombre 

echo "entrer le nombre que vous voulez $operateur"
read secondNombre 


if [ $operateur == "+" ] 
then
   resultat=$(($premierNombre + $secondNombre))
fi

if [ $operateur == "-" ] 
then
    resultat=$(($premierNombre - $secondNombre))
fi

if [ $operateur == "*" ] 
then
    resultat=$(($premierNombre * $secondNombre))
fi

#echo "Le résulat est égal à $resultat"

if [ $randPlace == 1 ]
then
    PS3="Quelle est la bonne reponse parmis celles-ci ? "
    options=("$rand" "$rand2" "$resultat")
    select opt in "${options[@]}"
    do
        case $opt in
             "$resultat")
                echo "Bonne réponse !"
                exit
                ;;
           "$rand")
                echo "Mauvaise réponse"
                exit
                ;;
            "$rand2")
                echo "Mauvaise réponse"
                exit
                ;;
            *) echo "invalid option";;
        esac
    done
fi

if [ $randPlace == 2 ]
then
    PS3="Quelle est la bonne reponse parmis celles-ci ? "
    options=("$rand" "$rand2" "$resultat")
    select opt in "${options[@]}"
    do
        case $opt in
            "$rand")
                echo "Mauvaise réponse"
                exit
                ;;
            "$rand2")
                echo "Mauvaise réponse"
                exit
                ;;
            "$resultat")
                echo "Bonne réponse !"
                exit
                ;;
            *) echo "invalid option";;
        esac
    done
fi

if [ $randPlace == 3 ]
    then
    PS3="Quelle est la bonne reponse parmis celles-ci ? "
    options=("$rand" "$rand2" "$resultat")
    select opt in "${options[@]}"
    do
        case $opt in
            "$rand2")
                echo "Mauvaise réponse"
                exit
                ;;
            "$resultat")
                echo "Bonne réponse !"
                exit
                ;;
            "$rand")
                echo "Mauvaise réponse"
                exit
                ;;
            *) echo "invalid option";;
        esac
    done
fi