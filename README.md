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
- Docker CMD Vs Entrypoint Commands: What's The Difference?: https://phoenixnap.com/kb/docker-cmd-vs-entrypoint#:~:text=CMD%20is%20an%20instruction%20that,container%20with%20a%20specific%20executable.
  - The syntax for any command in shell form is:
    - <instruction> <command>
  - The syntax for instructions in exec form is:
    - <instruction> [“executable”, “parameter”]
  - ex: You can write Docker CMD/ENTRYPOINT instructions in both forms:
    ```bash
        CMD echo “Hello World” (shell form)
        CMD ["echo", "Hello World"] (exec form)
        ENTRYPOINT echo "Hello World" (shell form)
        ENTRYPOINT ["echo", "Hello World"] (exec form)
    ```
  - What is the difference between CMD and ENTRYPOINT? You cannot override the ENTRYPOINT instruction by adding command-line parameters to the docker run command. By opting for this instruction, you imply that the container is specifically built for such use.
  - luon luon dung ENTRYPOINT de RUN command in container
