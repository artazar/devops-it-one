#!/bin/bash

set -x

DATA=$(../.bin/jq '.')

LEN=$(echo $DATA | ../.bin/jq '. | length') 

for ((i=0; i<$LEN; i++))
do
    NAME=$(echo $DATA | ../.bin/jq -r ".[$i].name")
    VALUES=$(echo $DATA | ../.bin/jq -r ".[$i].components.ingress.values")
    echo $VALUES | ../.bin/helm template $NAME ../vendor -f-
done