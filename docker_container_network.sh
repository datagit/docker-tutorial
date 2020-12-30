# https://xuanthulab.net/mang-network-bridge-trong-docker-ket-noi-cac-container-voi-nhau.html
docker network ls
# --driver bridge
# nó cho phép các container cùng network này liên lạc với nhau, cho phép gửi gói tin ra ngoài
docker network create --driver bridge name-network-bridge
docker network connect name-network-bridge name-container
docker network inspect  name-network-bridge