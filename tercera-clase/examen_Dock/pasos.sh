# Construcción de la imagen
docker build -t flask-app .

# Ejecución del contenedor
docker run -d -p 8080:8080 --name flask-container flask-app

# Verificar que el contenedor está corriendo
docker ps

# Probar los endpoints desde el navegador o con curl:
curl http://localhost:8080/
curl http://localhost:8080/health

# Detener el contenedor
docker stop flask-container

# Eliminar el contenedor (opcional)
docker rm flask-container

# Eliminar la imagen (opcional)
docker rmi flask-app
