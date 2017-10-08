Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

docker.exe container run -it microsoft/nanoserver powershell

Clear-Host

docker.exe build -t quadrotech/demo2 .

docker.exe images

docker.exe container run quadrotech/demo2 

docker.exe ps

docker.exe ps -all



