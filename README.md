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
/
  README.md
  docker-compose.yaml
  Dockerfile
  folder_struct.sh
  /src
  /supports
    /nginx
      default.conf
    /mysql
      /data
      /entrypoint
    /postgres
      dbdata

debe ajustar sus configuraciones en el docker-file para dar los nomres de la red, las imagenes, los contenedores, puertos, usuarios y contraseñas y otros detalles.

una vez este construida la estructura y configurado el docker-compose.yaml, ejecute docker-compose
>docker-compose up -d

al final, deben quedar los 4 contenedores listos
- php
- postgres
- mysql
- nginx

solo resta pasar a la carpeta src, para que instale su aplicacion...

