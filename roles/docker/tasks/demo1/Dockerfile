FROM ubuntu:latest
RUN useradd -ms /bin/bash docker_root
WORKDIR /home/docker_root
RUN mkdir /home/docker_root/.ssh
RUN chmod 700 /home/docker_root/.ssh
COPY client_ssh_rsa.pub .
RUN mv client_ssh_rsa.pub .ssh/authorized_keys
COPY demo1_ssh_rsa .
RUN mv demo1_ssh_rsa .ssh/id_rsa
RUN chmod 600 .ssh/authorized_keys
RUN chmod 600 .ssh/id_rsa
RUN chown docker_root .ssh
RUN chown docker_root .ssh/authorized_keys
RUN chown docker_root .ssh/id_rsa
RUN apt-get update && apt-get install -y openssh-server
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
# RUN service ssh restart
# ENTRYPOINT ["tail", "-f", "/dev/null"]
