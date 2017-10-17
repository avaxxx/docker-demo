Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

Clear-Host

docker rmi $(docker images -f "dangling=true" -q)

# webpages with dockerfiles

# https://github.com/kiasaki/docker-alpine-postgres

# https://github.com/dotnet/dotnet-docker

# https://github.com/aspnet/aspnet-docker

# https://portal.azure.com/#blade/HubsExtension/Resources/resourceType/Microsoft.ContainerRegistry%2Fregistries

# https://portal.azure.com/#blade/HubsExtension/Resources/resourceType/Microsoft.ContainerService%2FcontainerServices

# 

