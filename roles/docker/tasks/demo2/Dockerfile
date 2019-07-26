FROM ubuntu:latest
RUN useradd -ms /bin/bash docker_root
WORKDIR /home/docker_root
RUN mkdir /home/docker_root/.ssh
RUN chmod 700 /home/docker_root/.ssh
COPY demo1_ssh_rsa.pub .
RUN mv demo1_ssh_rsa.pub .ssh/authorized_keys
RUN chmod 600 .ssh/authorized_keys
RUN chown docker_root .ssh
RUN chown docker_root .ssh/authorized_keys
RUN apt-get update && apt-get install -y openssh-server
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
# RUN service ssh restart
# ENTRYPOINT ["tail", "-f", "/dev/null"]
