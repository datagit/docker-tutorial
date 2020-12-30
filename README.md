# docker-tutorial
docker-tutorial-practices
- https://xuanthulab.net/docker/
  - image: collection applications
    - image ubuntu includes:
      - libraries
      - files config
      - env
    - ex: a image from docker hub => ubuntu:latest
    - cmd:
        ```bash
            docker images -s
            #docker pull name-image:tag(latest)
            docker pull ubuntu
            docker rm IMAGE_ID
        ```
  - container: la ket qua cua viec RUN mot IMAGE
    - after run image = container
    - container=docker run IMAGE ...
    - cmd:
        ```bash
            docker ps
            docker ps -a
            docker container ls -all
            docker run -it ubuntu
            # -t connect with terminal of container
            # -i open stdin for input CMD
            docker container attach CONTAINER_ID
            # connect to terminal of container
            docker container start -i CONTAINER_ID
            # rerun a stopped container
            docker container rm CONTAINER_ID
            docker exec -it CONTAINER_ID BASH_COMMAND
            # run BASH_COMMAND in running container
            

        ```
- https://xuanthulab.net/chia-se-du-lieu-giua-docker-host-va-container.html
  - mount code from host into container: for run code
  - mount file config from host into container: for apply new config
  - in container copy file config to mount_folder: for edit config from host
  - chia se du lieu giup cac container
  - mount o dia vao container
