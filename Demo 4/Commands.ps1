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


docker rmi $(docker images -f "dangling=true" -q)

docker run --name SqlServer -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=demo123$!' -p 1433:1433 -d microsoft/mssql-server-linux:2017-GA 

docker.exe build -t quadrotech/demo4 .

# docker run -p 8080:8080 -d quadrotech/demo4444

docker run -it --rm -p 8000:80 --name demo4 quadrotech/demo4

docker exec -it 3016b0991239 /bin/bash 
