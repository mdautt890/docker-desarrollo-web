# docker-desarrollo-web

### Este proyecto permite realizar una instalacion de docker-compose para instalar PHP, NGINX, NODE, COMPOSER, POSTGRES, MYSQL


## Instalacion
#### Crear el directorio de trabajo
>mkdir [dir-trabajo]
#### cambiarse al directorio de trabajo
>cd dir-trabajo
#### Clonar el repositorio
>git clone https://github.com/mdautt890/docker-desarrollo-web.git .
#### Ejecute el script para crear la estructura de directorios
>./folder_struct.sh

Este escript creara una estructura de directorios para alojar la data de las diferentes imagenes
al fila el proyecto tendra esta estructura

- /
 - docker-compose.yaml
 - Dockerfile
 - folder_struct.sh
 - var_ambiente.sh
 - .env
 - /supports
 - - /nginx
 - - - default.conf
 - - /mysql
 - - - /data
 - - - /entrypoint
 - - /postgres
 - - - /dbdata
 - - /mariadb
 - - - /dbdata
 - - - /config
 - - /redis

debe ajustar sus configuraciones en el docker-compose para dar los nomres de la red, las imagenes, los volumenes, los contenedores, puertos, usuarios y contraseñas y otros detalles.

una vez este construida la estructura y configurado el docker-compose.yaml, ejecute docker-compose
>./var_ambiente.sh
con esto se ajustan en el compose algunas variables como la de RED

paso siguiente se procede a construir y correr el docker para la generacion de los contenedores
>docker-compose up -d

al final, deben quedar los 4 contenedores listos
- php
- postgres
- mysql
- mariadb
- redis
- nginx

solo resta pasar a la carpeta src, para que instale su aplicacion...

