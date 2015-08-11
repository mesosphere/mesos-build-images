FROM ubuntu:14.04

# Install dependencies.
RUN apt-get update
RUN apt-get -y install build-essential git maven autoconf libtool
RUN apt-get -y install openjdk-7-jdk python-dev python-boto libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev libevent-dev

# Add an unpriviliged user.
RUN adduser --disabled-password --gecos '' mesos

# Disable any tests failing on Ubuntu.
ENV GTEST_FILTER -FsTest.FileSystemTableRead

# Set working directory.
WORKDIR mesos
