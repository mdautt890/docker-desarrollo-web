#!/bin/bash

echo Inicia el proceso
while IFS== read -r nombre valor
do
  if [[ "$nombre" == 'RED_NAME' ]]; then
    echo la variable "$nombre" tiene asignado el valor "$valor"
    sed -i -e 's/'RED_DUMMY'/'"$valor"'/g' ./docker-compose.yaml
    echo Se realizo el cambio en el docker-compose
  fi
done < .env
echo Fin del Proceso
