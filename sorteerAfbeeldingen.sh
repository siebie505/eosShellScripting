#!/usr/bin/env bash

# Maak een map genaamd "Afbeeldingen"  aan in de meegegegven map, print de uitvoer hiervan en geef geen error als die al bestaat
mkdir -pv $1Afbeeldingen


# Zolang er .png of .jpg bestanden zijn, verplaats ze naar de map Afbeeldingen
while find $1*.{jpg,png}; do mv $1*.{jpg,png} $1Afbeeldingen/; done


#find $1*.{jpg,png} -exec mv '{}' $1Afbeeldingen/ \;
