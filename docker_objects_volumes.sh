- https://xuanthulab.net/chia-se-du-lieu-giua-docker-host-va-container.html
- shard folder: host_pc <=> container
    ```bash
    # mount a folder from host_pc into container
    # -v path_to_data:path_in_container
    docker run -it -v /home/sitedata:/home/data ubuntu
    ```
- shard folder: first_container <=> second_container
    ```bash
    docker run -it --volumes-from first_container ubuntu
    ```
- docker create volumes
- docker bind volume into a folder in host_pc
- mount a disk into container
```bash
docker volume ls
docker volume create name_volume
docker volume inspect name_volume
docker volume rm name_volume
# mount a disk into a container(--mount) at folder(/home/first_disk)
docker volume create first_disk
docker run -it --mount source=first_disk,target=/home/first_disk ubuntu
docker run -it -v first_disk:/home/first_disk ubuntu
# remove all volumes not used by container
```