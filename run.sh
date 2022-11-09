docker build -t flaskapp ./flaskapp
docker build -t user/nginx ./proxy
docker network create -d bridge app
docker run -d --name flaskapp --network app -p 5000:5000 flaskapp
docker run -d --name nginx --network app -p 8080:80 user/nginx