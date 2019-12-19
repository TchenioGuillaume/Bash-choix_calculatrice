#!/bin/bash
# ceci est un shebang, et permet a l'OS de lui indiquer que ce fichier est un script

frape=0
while [[ "$frape" != "exit"  ]]; do #affiche $frape tant qu'il ecrit pas "exit"
  clear
  echo "Bonjour, vous souhaitez :"
  echo "1) Se déplacer dans un dossier"
  echo "2) Afficher le contenu d'un fichier"
  echo "3) Intéragir avec un fichier"
  echo "4) Intéragir avec un dossier"
  echo "5) Afficher une image"
  echo "6) Chercher un mot"
  read frape

  if [[ "$frape" == "1" ]]; then
    clear
    ls
    echo "Dans quel dossier vous voulez aller"
    read choix1
    cd $choix1
    ls
  fi

  if [[ "$frape" == "2" ]]; then
    clear
    ls
    echo "Quel contenu de fichier voulez vous afficher ?"
    read choix3
    cat $choix3 #afficher
  fi

  if [[ "$frape" == "3" ]]; then
    clear
    echo "Vous voulez intéragir avec un fichier"
    echo "a.Supprimer"
    echo "b.Copier"
    echo "c.Déplacer"
    echo "d.Renommer"
    read choix4

    if [[ "$choix4" == "a" ]]; then
      clear
      ls
      echo "Quel fichier vous voulez supprimer ?"
      read supprimer
      rm $supprimer
      ls
      echo "Votre fichier a été supprimer"
    fi

    if [[ "$choix4" == "b" ]]; then
      clear
      ls
      echo "Quel fichier vous voulez copier ?"
      read copier
      echo "ou voulez vous le coller ?"
      read coller
      cp $copier $coller
      echo "Votre fichier a été copier/coller"
    fi

    if [[ "$choix4" == "c" ]]; then
      clear
      ls
      echo "Quel fichier vous voulez deplacer ?"
      read deplacer
      echo "ou voulez vous le deplacer ?"
      read deplacement
      mv $deplacer $deplacement
      echo "Votre fichier a été déplacer"
    fi

    if [[ "$choix4" == "d" ]]; then
      clear
      ls
      echo "Quel fichier vous voulez renommer ?"
      read fichierRenommer
      echo "Comment voulez vous le renommer ?"
      read renommer
      mv $fichierRenommer $renommer
      echo "Votre fichier a été renommer"
    fi
  fi

  if [[ "$frape" == "4" ]]; then
    clear
    echo "Vous voulez intéragir avec un dossier"
    echo "a.Supprimer"
    echo "b.Copier"
    echo "c.Déplacer"
    echo "d.Renommer"
    read choix5

    if [[ "$choix5" == "a" ]]; then
      clear
      ls
      echo "Quel dossier vous voulez supprimer ?"
      read supprimer
      rm -rf $supprimer
      ls
      echo "Votre dossier a été supprimer"
    fi

    if [[ "$choix5" == "b" ]]; then
      clear
      ls
      echo "Quel dossier vous voulez copier ?"
      read copier
      echo "Quel nom voulez vous lui donner ?"
      read coller
      cp -r $copier $coller
      echo "Votre dossier a été copier/coller"
    fi

    if [[ "$choix5" == "c" ]]; then
      clear
      ls
      echo "Quel dossier vous voulez deplacer ?"
      read dossier
      echo "ou voulez vous le deplacer ?"
      read destination
      mv $dossier $destination
      echo "Votre dossier a été déplacer"
    fi

    if [[ "$choix5" == "d" ]]; then
      clear
      ls
      echo "Quel fichier vous voulez renommer ?"
      read fichierRenommer
      echo "Comment voulez vous le renommer ?"
      read renommer
      mv $fichierRenommer $renommer
      echo "Votre fichier a été renommer"
    fi
  fi

  if [[ "$frape" == 5 ]]; then
    echo "Mettre le lien de l'image que vous souhaitez afficher"
    read image
    xdg-open $image #ouvre l'image
  fi

  if [[ "$frape" == "6" ]]; then
    echo "Quel mot chez vous ?"
    read mot
    echo "Dans quel fichier ?"
    read recherche
    grep $mot $recherche #lance une recherce
  fi
done
