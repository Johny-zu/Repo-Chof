# clase, ejercicios entre otros de docker

docker pull nginx

docker run -d -p 8080:80 --name mi_nginx nginx

docker start mi_ngnix

mkdir app
cd app

touch index.html
vim index.html

# dentro del index
<!DOCTYPE html>
<html lang="en">
<head>
    <title>laboratorio docker IS - AJGH</title>
</head>
<body>
    <h1>laboratorio de docker AJGH</h1>
</body>
</html>

docker run -d -p 8080:80 --name index.html -v $(pwd)/app:/usr/share/nginx/html nginx