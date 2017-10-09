Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker

docker.exe build -t quadrotech/demo3 .

#region Output log
# Sending build context to Docker daemon  76.29kB
# Step 1/8 : FROM microsoft/dotnet:2.0.0-sdk-nanoserver AS builder
# 2.0.0-sdk-nanoserver: Pulling from microsoft/dotnet
# bce2fbc256ea: Downloading
# 5cd49617cf50: Downloading
# cdb7b07cc9d2: Download complete
# 7cf5194d8059: Waiting
# bfb7d0dded7b: Waiting
# 816ef244bda7: Waiting
# 63573beddeb6: Waiting
# 0731779f9564: Waiting
# 6e6e7b8f7f3d: Waiting
# d1ea8eb099dc: Waiting
# image operating system "windows" cannot be used on this platform
# PS C:\Projects\docker-demo\Demo 3> docker.exe build -t quadrotech/demo3 .
# Sending build context to Docker daemon  76.29kB
# Step 1/8 : FROM microsoft/dotnet:2.0.0-sdk-nanoserver AS builder
# 2.0.0-sdk-nanoserver: Pulling from microsoft/dotnet
# bce2fbc256ea: Pull complete
# 5cd49617cf50: Pull complete
# cdb7b07cc9d2: Pull complete
# 7cf5194d8059: Pull complete
# bfb7d0dded7b: Pull complete
# 816ef244bda7: Pull complete
# 63573beddeb6: Pull complete
# 0731779f9564: Pull complete
# 6e6e7b8f7f3d: Pull complete
# d1ea8eb099dc: Pull complete
# Digest: sha256:d212058d2dbd6a044815dfb60fd41f24193bb98ce5b1ec291a092bbbd208ad62
# Status: Downloaded newer image for microsoft/dotnet:2.0.0-sdk-nanoserver
#  ---> b21d0dcac3da
# Step 2/8 : WORKDIR /src
#  ---> 04a034f4404c
# Removing intermediate container dccef1db7b82
# Step 3/8 : COPY src/ .
#  ---> d09faf547b87
# Step 4/8 : RUN dotnet restore; dotnet build; dotnet publish
#  ---> Running in 418a361bc7a2
#   Restoring packages for C:\src\HelloWorld.csproj...
#   Generating MSBuild file C:\src\obj\HelloWorld.csproj.nuget.g.props.
#   Restore completed in 309.1 ms for C:\src\HelloWorld.csproj.
# Microsoft (R) Build Engine version 15.3.409.57025 for .NET Core
# Copyright (C) Microsoft Corporation. All rights reserved.

#   HelloWorld -> C:\src\bin\Debug\netcoreapp2.0\HelloWorld.dll

# Build succeeded.
#     0 Warning(s)
#     0 Error(s)

# Time Elapsed 00:00:04.33
# Microsoft (R) Build Engine version 15.3.409.57025 for .NET Core
# Copyright (C) Microsoft Corporation. All rights reserved.

#   HelloWorld -> C:\src\bin\Debug\netcoreapp2.0\HelloWorld.dll
#   HelloWorld -> C:\src\bin\Debug\netcoreapp2.0\publish\
#  ---> 6bbc10886849
# Removing intermediate container 418a361bc7a2
# Step 5/8 : FROM microsoft/dotnet:2.0.0-runtime-nanoserver
# 2.0.0-runtime-nanoserver: Pulling from microsoft/dotnet
# bce2fbc256ea: Already exists
# 5cd49617cf50: Already exists
# cdb7b07cc9d2: Already exists
# 04e2b1747e90: Pull complete
# f4250f93da2a: Pull complete
# 231cb2b6f441: Pull complete
# a84c6353033c: Pull complete
# b227983a3d38: Pull complete
# Digest: sha256:a350d8e7b8f6c19f24c366dbf7efb384bfd62239098d286b2be47967f193fddd
# Status: Downloaded newer image for microsoft/dotnet:2.0.0-runtime-nanoserver
#  ---> cf9e23dd71da
# Step 6/8 : WORKDIR /dotnetapp
#  ---> 2eb846ddb4c4
# Removing intermediate container f79efe0ce2ed
# Step 7/8 : COPY --from=builder /src/bin/Debug/netcoreapp2.0/publish .
#  ---> 579abc147d3d
# Step 8/8 : CMD dotnet HelloWorld.dll
#  ---> Running in 53775a7533ac
#  ---> 427a747cb131
# Removing intermediate container 53775a7533ac
# Successfully built 427a747cb131
# Successfully tagged quadrotech/demo3:latest
#endregion

docker.exe container run quadrotech/demo3 

docker.exe container run -it quadrotech/demo3 powershell 