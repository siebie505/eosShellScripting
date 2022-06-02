#!/usr/bin/env bash

# vind alle bestanden die eindigen op.jpg en voer het convert commando daarop uit
find $1*.jpg -exec convert '{}' -resize 128x128 png:'{}'.png \;
