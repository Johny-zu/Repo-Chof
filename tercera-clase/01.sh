# primero hacemos el pull del contenedor
docker pull hello-world
# corremos el contenddor
docker run hello-world
# checamos info de la imagen
docker images
# checamos lo del docker
docker ps -a
# ejecutmos la imagen
docker run --name hola_academia hello-word

docker run -d --name pagina_web1 -p  8080:80  nginx

# alpine
docker run alpine
docker run -d alpine

# vemos
docker -ps

## regresando 
docker run -d --name mi_alpine alpine tail -f /dev/null
#
docker exec mi_alpine ls
# para traer la info
docker exec mi_alpine echo "Hola"
#
docker exec -it mi_alpine sh

docker exec mi_alpine cat /var/log/info_conteiner.log

docker exec mi_alpine cat /var/log/info_conteiner.log > info_conteiner_local.log
ls
cat info_conteiner_local-log

docker exec pagina_web1 rm /usr/share/nginx/html/index.html
docker exec pagina_web1 echo "<h1> Hola desde nginx </h1>" /usr/share/nginx/html/index.html

docker exec -it pagina_web1 sh
cd /usr/share/

docker volume ls
docker volume create academia_paginas
docker volume ls

mkdir app
cd app
vim index.html
en el vim
<h1> hola yo soy Angel y este es mi is: AJGH </h> 


docker rmi -f alpine
docker stop mi_alpine

# para eliminar las image
docker image prune
# para quitar las imagenes de verdad(ahora si el bueno) quita el que este detenido
docker conteiner prune

# siguiente practica
docker run -d -p 8080:80 -v $(pwd)/app:/usr/share/nginx/html nginx