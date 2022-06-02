#!/usr/bin/env bash
# lees de naam in, en zet in variabele "name"
read -p "Wat is je naam: " name

# check of "name" leeg is, zoja pak de waarde die whoami geeft en zet deze in "name"
if [ "$name" = "" ]; then
	name=$(whoami)
fi


# blijf loopen totdat beide passwords gelijk zijn, en password langer is dan 7 karakters
until [ "$passwd" = "$passwdconf" ] && ((${#passwd} > 7)); do
	echo ""
	read -s -p "Geef een wachtwoord: " passwd
	echo ""
	read -s -p "Bevestig je wachtwoord: " passwdconf
done


# schrijf de username en de md5 van de password naar de meegegeven filename
echo "username: $name md5: $(echo "$passwd" | md5sum)" > $1
