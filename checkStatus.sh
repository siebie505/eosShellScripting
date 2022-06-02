#!/usr/bin/env bash

# verwijder al bestaand logbestand met dezelfde naam, geef geen error als die er niet is
rm -f ${1}${3}
# maak logbestand
touch ${1}${3}

# ga elk bestand in de map af en noem dit bestand even "file"
for file in $1*; do
	# voer het meegegeven command uit op de huidige file, en ga in de if statement als het command lukte.
	if  ($2 $file); then
		echo "$2 $file is gelukt" >> ${1}${3} # write succes
	else
		echo "$2 $file is niet gelukt" >> ${1}${3} # write failure
	fi
done
