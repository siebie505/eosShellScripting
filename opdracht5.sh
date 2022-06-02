#!/usr/bin/env bash


# ga elk bestand in de meegegeven map ap
for file in $1*; do
	case $file in
		*.txt)
			# als het huidige bestand een tekstbestand is
			
			# bij een tweede bestand zou de until loop niet meteen overgeslagen worden
			ans="a"
			# blijf loopen tot de gebruiker "y" of "n" antwoord
			until [ "$ans" = "y" ] || [ "$ans" = "n" ]; do
				read -p "Wil je regenboog bij de tekst van ${file}?" ans
				case $ans in
					y)
						# output regenboog als de gebruiker ja zegt
						less $file | lolcat
						;;
					n)
						# output gewoon het bestand als de gebruiker nee zegt
						less $file
						;;
					*)
						echo "Voer y of n in"  
						;;
					esac			
			done
			;;
		*.png)
			# als het huidige bestand een png bestand is

			
			# bij een tweede bestand zou de until loop niet meteen overgeslagen worden
			anspic="a"

			# blijf loopen tot de gebruiker "y" of "n" antwoord
			until [ "$anspic" = "y" ] || [ "$anspic" = "n" ]; do
				read -p "Is ${file} een mooie foto?" anspic
				case $anspic in
					y)
						echo "Dat is fijn voor je"
						;;
					n)
						# verander de naam van het bestand zodat de naam eindigd op lelijk
						mv ${file} ${file}lelijk
						;;
					*)
						echo "Voer y of n in" 
						;;
					esac
			done
			;;
		*)
			# als het geen .png of .txt bestand is
			echo "$file overslaan"
			;;
	esac
done
