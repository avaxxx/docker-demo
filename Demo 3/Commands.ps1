Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

#interactive containers
#Interactive containers are useful when you're building your own container images, as you can
#work through the steps interactively first and verify that everything will work as you expect.
#They're good exploratory tools too.
docker.exe container run -it microsoft/nanoserver powershell

Clear-Host

#task container 
#Task containers are very useful in automating repetitive tasks - like running scripts to set up an
#environment, backing up data, or collecting log files. Your container image packages the script
#to run, along with the exact version of the engine that the script needs, so anyone with Docker
#installed can run that script without having to install the engine.
docker.exe build -t quadrotech/demo2 .

docker.exe images

docker.exe container run quadrotech/demo2 

docker.exe ps

docker.exe ps -all

#background container
#the background container is the one that you'll use most in production - 
#which keeps a long-running process running in the background. It's a container that
#behaves like a Windows Service. In Docker terminology, it's called a detached container, and
#it's the Docker service that keeps it running in the background. Inside the container, the process
#runs in the foreground. The process might be a web server or a console application polling a
#message queue for work, but as long as the process keeps running, Docker will keep the
#container alive.

