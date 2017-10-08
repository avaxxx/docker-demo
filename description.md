# Using docker

# Script container


# Building docker image

Docker images are layered. The bottom layer is the operating system, which can be a full OS
like Windows Server Core, or a minimal OS like Microsoft Nano Server. On top of that are
layers for each change you make to the base OS when you build an image - by installing
software, copying files, and running commands. Logically, Docker treats the image as a single
unit, but physically, each layer is stored as a separate file in Docker's cache, so images with a lot
of common features can share layers from the cache.

Images are built using a text file with the Dockerfile language - specifying the base OS image to
start with, and all the steps to add on top. The language is very simple, and there are only a few
commands you need to master in order to build production-grade images.
