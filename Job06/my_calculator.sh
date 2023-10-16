#!/bin/bash

# Fonction pour effectuer l'addition
addition() {
  result=$(( $1 + $2 ))
  echo "Résultat de l'addition : $result"
}

# Fonction pour effectuer la soustraction
soustraction() {
  result=$(( $1 - $2 ))
  echo "Résultat de la soustraction : $result"
}

# Fonction pour effectuer la multiplication
multiplication() {
  result=$(( $1 * $2 ))
  echo "Résultat de la multiplication : $result"
}

# Fonction pour effectuer la division
division() {
  if [ $2 -eq 0 ]; then
    echo "Erreur : Division par zéro impossible."
  else
    result=$(( $1 / $2 ))
    echo "Résultat de la division : $result"
  fi
}

# Menu principal
echo "Mini Calculatrice en Bash"
echo "1. Addition"
echo "2. Soustraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Choisissez une opération (1/2/3/4) : " choix

read -p "Entrez le premier nombre : " num1
read -p "Entrez le deuxième nombre : " num2

case $choix in
  1) addition $num1 $num2;;
  2) soustraction $num1 $num2;;
  3) multiplication $num1 $num2;;
  4) division $num1 $num2;;
  *) echo "Opération non valide";;
esac

