Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

Clear-Host

docker rmi $(docker images -f "dangling=true" -q)
