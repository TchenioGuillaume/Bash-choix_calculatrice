#!/bin/bash
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script


choix="" #le resultat sera une string
select option in "Se déplacer dans un dossier" "Afficher le contenu d'un fichier" "Intéragir avec un fichier" "Intéragir avec un dossier" "Afficher une image" "Chercher un mot"
    do
        case $option in
             "Se déplacer dans un dossier")
                echo "Dans quel dossier vous souhaitez vous déplacer"
                read choix1
                exit
                ;;
           "Afficher le contenu d'un fichier")
                echo "Quel fichier voulez vous afficher"
                read choix2
                exit
                ;;
            "Intéragir avec un fichier")
                echo "Que voulez vous faire"
                read choix3
                exit
                ;;
            "Intéragir avec un dossier")
                echo "Que voulez vous faire"
                read choix4
                exit
                ;;
            "Afficher une image")
                 echo "Quel image voulez vous afficher"
                 read choix5
                 exit
                 ;;
            *) echo "invalid option";;
        esac
    done
