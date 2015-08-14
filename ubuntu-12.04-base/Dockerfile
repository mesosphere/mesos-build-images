FROM ubuntu:12.04

# Install dependencies.
RUN apt-get update
RUN apt-get -y install build-essential git maven autoconf libtool
RUN apt-get -y install icedtea-7-plugin openjdk-7-jdk python-dev python-boto libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev libevent-dev
RUN update-java-alternatives -s java-1.7.0-openjdk-amd64

# Add an unpriviliged user.
RUN adduser --disabled-password --gecos '' mesos
