Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

docker pull microsoft/mssql-server-linux:2017-GA

docker pull microsoft/aspnetcore:2.0.0

dotnet build
