Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

docker pull microsoft/mssql-server-linux:2017-GA

docker pull microsoft/aspnetcore:2.0.0

dotnet build

chcp 852

docker-compose build

docker-compose up

docker-compose top

####################

dotnet publish -o ./bin/PublishOutput

docker-compose -f docker-compose.debug.yml build

docker-compose -f docker-compose.debug.yml up

##############

az group create --name ContainerService --location westeurope

az acs create --name ContainerService --orchestrator-type Swarm --resource-group ContainerServiceGroup --generate-ssh-keys --agent-vm-size Standard_A2_v2


az network public-ip list --resource-group ContainerService --query "[*].{Name:name,IPAddress:ipAddress}" -o table


#swarm-agent-ip-quadrotechagents-1F6F72ED  52.232.39.223
#swarm-master-ip-quadrotechmgmt-1F6F72ED   104.45.12.33

#Your public key has been saved in /home/avaxxx/.ssh/id_rsa.pub.

ssh azureuser@104.45.12.33 -A -p 2200 -i <PUB_FILE_LOCATION>

#ssh -p 2200 -fNL 2375:localhost:2375 azureuser@104.45.12.33 -i /mnt/c/Users/avaxx/.ssh/id_rsa.pub

az group delete --name ContainerServiceGroup --yes --no-wait



docker rmi $(docker images -f "dangling=true" -q)

docker run --name SqlServer -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=demo123$!' -p 1433:1433 -d microsoft/mssql-server-linux:2017-GA 

docker.exe build -t quadrotech/demo4 .

# docker run -p 8080:8080 -d quadrotech/demo4444

docker run -it --rm -p 8000:80 --name demo4 quadrotech/demo4

docker exec -it 3016b0991239 /bin/bash 
