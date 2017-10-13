#######################
###      LINUX     ####
#######################

cd ..

cd '.\Demo 5'

chcp 852

#------------------------------------------------------------------------------------------------

docker-compose build

#------------------------------------------------------------------------------------------------

docker-compose up

#------------------------------------------------------------------------------------------------

az group create --name ContainerService --location westeurope

#------------------------------------------------------------------------------------------------

az acs create --name ContainerService --orchestrator-type Swarm --resource-group ContainerServiceGroup --generate-ssh-keys --agent-vm-size Standard_A2_v2 --agent-count 2

#------------------------------------------------------------------------------------------------

az network public-ip list --resource-group ContainerService --query "[*].{Name:name,IPAddress:ipAddress}" -o table

#------------------------------------------------------------------------------------------------

#https://docs.microsoft.com/en-us/azure/container-service/dcos-swarm/container-service-enable-public-access

#------------------------------------------------------------------------------------------------

# swarm-agent-ip-quadrotechagents-C603A516  13.95.29.165
# swarm-master-ip-quadrotechmgmt-C603A516   13.93.111.9

# Your public key has been saved in /home/avaxxx/.ssh/id_rsa.pub.

#------------------------------------------------------------------------------------------------

ssh azureuser@13.93.111.9 -A -p 2200 -i /mnt/c/Users/avaxx/.ssh/id_rsa

#------------------------------------------------------------------------------------------------

git clone https://github.com/avaxxx/docker-demo

#------------------------------------------------------------------------------------------------

docker swarm init

#------------------------------------------------------------------------------------------------

# get join token
#??docker swarm join-token manager

#------------------------------------------------------------------------------------------------

export DOCKER_HOST=:2375

#------------------------------------------------------------------------------------------------

#??docker swarm join --token SWMTKN-1-1j0miaws4cgr7nlybz6z5qxobt49974jl5thdam0dq4u4h0qou-2ruxx81tjfq1mwbw5bicyq73b 172.16.0.5:2377

#------------------------------------------------------------------------------------------------

# update docker-compose
# sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose



docker login quadrotech.azurecr.io -u quadrotech -p H4XjpwvL96DTfoC=VY0OD2JmqGFDXbEk

docker pull quadrotechdemo.azurecr.io/demo5:2.0.0



#------------------------------------------------------------------------------------------------

docker-compose build

#------------------------------------------------------------------------------------------------

docker-compose up --scale web=2

#------------------------------------------------------------------------------------------------

#https://portainer.readthedocs.io/en/latest/deployment.html
docker service create --name portainer --publish 9000:9000 --constraint 'node.role == manager' --mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock portainer/portainer -H unix:///var/run/docker.sock

#------------------------------------------------------------------------------------------------

#opern port 9000
swarm-master-ip-quadrotechmgmt-1F6F72ED #https://docs.microsoft.com/en-us/azure/container-service/dcos-swarm/container-service-enable-public-access

#------------------------------------------------------------------------------------------------

https://github.com/portainer/portainer/issues/704

#------------------------------------------------------------------------------------------------

# http://quadrotechagents.westeurope.cloudapp.azure.com

#------------------------------------------------------------------------------------------------

export DOCKER_HOST=:2375

#------------------------------------------------------------------------------------------------

docker ps

#------------------------------------------------------------------------------------------------

dockr info

#------------------------------------------------------------------------------------------------

az group delete --name ContainerService --yes --no-wait


# Containers: 2
# Running: 2
# Paused: 0
# Stopped: 0
# Images: 2
# Server Version: 17.09.0-ce
# Storage Driver: overlay
# Backing Filesystem: extfs
# Supports d_type: true
# Logging Driver: json-file
# Cgroup Driver: cgroupfs
# Plugins:
# Volume: local
# Network: bridge host macvlan null overlay
# Log: awslogs fluentd gcplogs gelf journald json-file logentries splunk syslog
# Swarm: active
# NodeID: mmhvlatodd4xi6vxxcy3yhmsb
# Is Manager: true
# ClusterID: jmj7wgc7htmnyj2ybxd7ly9n4
# Managers: 1
# Nodes: 1
# Orchestration:
#  Task History Retention Limit: 5
# Raft:
#  Snapshot Interval: 10000
#  Number of Old Snapshots to Retain: 0
#  Heartbeat Tick: 1
#  Election Tick: 3
# Dispatcher:
#  Heartbeat Period: 5 seconds
# CA Configuration:
#  Expiry Duration: 3 months
#  Force Rotate: 0
# Autolock Managers: false
# Root Rotation In Progress: false
# Node Address: 172.16.0.5
# Manager Addresses:
#  172.16.0.5:2377
# Runtimes: runc
# Default Runtime: runc
# Init Binary: docker-init
# containerd version: 06b9cb35161009dcb7123345749fef02f7cea8e0
# runc version: 3f2f8b84a77f73d38244dd690525642a72156c64
# init version: 949e6fa
# Security Options:
# apparmor
# Kernel Version: 3.19.0-65-generic
# Operating System: Ubuntu 14.04.4 LTS
# OSType: linux
# Architecture: x86_64
# CPUs: 2
# Total Memory: 6.805GiB
# Name: swarm-master-1F6F72ED-0
# ID: BJOA:4EWY:3SKM:45Z6:CJQM:ZRDA:HINJ:JDNW:NX3Q:ZVVD:E3X3:AKBL
# Docker Root Dir: /var/lib/docker
# Debug Mode (client): false
# Debug Mode (server): false
# Registry: https://index.docker.io/v1/
# Experimental: false
# Insecure Registries:
# 127.0.0.0/8
# Live Restore Enabled: false




docker image build -t avaxxx/demo5 .

docker tag avaxxx/demo5  avaxxx/demo5:1.0.0

docker push avaxxx/demo5 