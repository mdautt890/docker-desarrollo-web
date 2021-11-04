#!/bin/bash

echo Inicia el proceso
while IFS== read -r nombre valor
do
  if [[ "$nombre" == 'RED_NAME' ]]; then
    echo la variable "$nombre" tiene asignado el valor "$valor"
    sed -i -e 's/'RED_DUMMY'/'"$valor"'/g' ./docker-compose.yaml
    echo Se realizo el cambio en el docker-compose la red dummy
  fi
  if [[ "$nombre" == 'PHP_CONT_PORT' ]]; then
    echo la variable "$nombre" tiene asignado el valor "$valor"
    sed -i -e 's/'php:9000'/'php:"$valor"'/g' ./supports/nginx/default.conf
    echo Se realizo el cambio en el nginx default.conf el php port
  fi
  if [[ "$nombre" == 'NGINX_CONT_PORT' ]]; then
    echo la variable "$nombre" tiene asignado el valor "$valor"
    sed -i -e 's/listen 80/listen '"$valor"'/g' ./supports/nginx/default.conf
    echo Se realizo el cambio en el nginx default.conf el listen port
  fi
  if [[ "$nombre" == 'PHP_CONT_PORT' ]]; then
    echo la variable "$nombre" tiene asignado el valor "$valor"
    sed -i -e 's/EXPOSE 9000/EXPOSE '"$valor"'/g' ./Dockerfile
    echo Se realizo el cambio en el Dockerfile el EXPOSE port
  fi  
done < .env
echo Fin del Proceso
