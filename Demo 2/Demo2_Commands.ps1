#######################
###     WINDOWS    ####
#######################

#interactive containers
#Interactive containers are useful when you're building your own container images, as you can
#work through the steps interactively first and verify that everything will work as you expect.
#They're good exploratory tools too.

docker container run -it microsoft/nanoserver powershell

#------------------------------------------------------------------------------------------------

#task container 
#Task containers are very useful in automating repetitive tasks - like running scripts to set up an
#environment, backing up data, or collecting log files. Your container image packages the script
#to run, along with the exact version of the engine that the script needs, so anyone with Docker
#installed can run that script without having to install the engine.

docker build -t quadrotech/demo2 .

#------------------------------------------------------------------------------------------------

docker images

#------------------------------------------------------------------------------------------------

docker container run quadrotech/demo2 

#------------------------------------------------------------------------------------------------

docker ps

#------------------------------------------------------------------------------------------------

docker ps -all

#------------------------------------------------------------------------------------------------

#Data management

docker container run -it --volume C:\Host:C:\app microsoft/nanoserver powershell

# Get-Content c:\app\Test1.txt
# echo 'Changed!' > c:\app\Test1.txt
# Get-Content c:\app\Test1.txt