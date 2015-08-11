FROM mesosbuild/jenkins:ubuntu-14.04-base

# Install dependencies.
RUN apt-get update
RUN apt-get -y install gcc-4.8

# Set working directory.
WORKDIR mesos

# Set environment variables.
ENV CC gcc
ENV CXX g++
