#!/usr/bin/env bash

case $1 in
  *.py)
	# Het meegegeven bestand eindit in .py, dus voer met python uit.
	python3 $1
	;;
  *.sh)
	# een .sh bestand
	bash $1
	;;
  *.cc)
	# een .cc bestand
	cat $1
	;;
  *)
	# een overig bestand
	echo "Geef alstublieft een geldig bestand mee"
	;;
esac

