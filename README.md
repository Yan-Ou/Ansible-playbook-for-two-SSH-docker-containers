# Ansible playbook for two SSH docker containers

## This playbook creates the following resources
- 2 x docker containers with SSH daemon enabled: demo1, demo2
- Create docker_root account for demo1 and demo2
- 1 x docker network demo-network to connect two containers created by the playbook
- 2 x SSH keypairs - for client to SSH into demo1 and from demo1 to SSH to demo2 without password, respectively.
- The playbook copies public keys to the correct path in demo1 and demo2

## Run the playbook

```
ansible-playbook playbook.yml
```

## Check containers are up
```
docker container ls
```

## SSH from local to demo1
```
ssh -i roles/docker/tasks/demo1/client_ssh_rsa -p 2222 docker_root@localhost
```

## SSH to demo2 from demo1
```
ssh docker_root@demo2
```
