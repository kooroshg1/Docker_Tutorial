# Base image
FROM ubuntu:14.04.5

# Updates and install various packages
RUN apt-get update --yes
RUN apt-get install build-essential --yes
RUN apt-get install gfortran --yes
RUN apt-get install libcr-dev mpich2 mpich2-doc --yes
RUN apt-get install vim --yes
RUN apt-get install openssh-server --yes
RUN service ssh restart

# Copies a C++ code from src to dst
COPY ./prime_mpi.cpp /home/prime_mpi.cpp
