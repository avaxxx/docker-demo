Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

docker pull microsoft/mssql-server-linux:2017-GA

docker pull microsoft/aspnetcore:2.0.0

dotnet build



docker-compose build

chcp 852

docker-compose up


docker volume ls

#ls /var/opt/mssql/data

docker cp SqlServer:/var/opt/mssql/data/ProductsDatabase.mdf C:/Host
docker cp SqlServer:/var/opt/mssql/data/ProductsDatabase_log.ldf C:/Host