#!/bin/bash -

#Входен параметър е поколението
#Резултат: Броят потомци за това поколение

GENERATION=$1

CURRENT_GENERATION_ANCESTORS=$(cut -d. -f1-$((GENERATION+1)) ../familytree.csv | sort -u | grep . | grep -v id | wc -l)
PREVIOUS_GENERATION_ANCESTORS=$(cut -d. -f1-$GENERATION ../familytree.csv | sort -u | grep . | grep -v id | wc -l)

echo $((CURRENT_GENERATION_ANCESTORS-PREVIOUS_GENERATION_ANCESTORS))