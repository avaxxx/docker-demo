Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker


Clear-Host

#get the docker information
docker version

Clear-Host

docker.exe images 
#region test     

#endregion  

docker.exe container run dockeronwindows/ch01-whale -it powershell