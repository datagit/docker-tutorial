# first
docker --version
docker info
docker images
docker images -a
docker ps
docker ps -a
docker history IMAGE_OR_CONTAINER_NAME_OR_ID
docker inspect IMAGE_OR_CONTAINER_NAME_OR_ID
# show log on container: run commands,...
docker logs CONTAINER_NAME_OR_ID
# docekr tu khoi dong lai container neu no bi dung
# --restart=always mysql
docker run -it --network www-net --name c-mysql -h mysql -v "/mycode/db":/var/lib/mysql1 -e MYSQL_ROOT_PASSWORD=abc123 --restart=always mysql
# https://xuanthulab.net/mang-network-bridge-trong-docker-ket-noi-cac-container-voi-nhau.html
docker run -v $(pwd)/configs:/c-tmp -it ubuntu
# in container cp file config into /c-tmp
# in host edit file config
# from Dockerfile run service by config
docker container prune
# Removes all stopped containers.
