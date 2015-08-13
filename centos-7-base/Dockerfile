FROM centos:7

# Install dependencies.
RUN yum groupinstall -y 'Development Tools'
RUN yum install -y epel-release
RUN yum install -y git maven
RUN yum install -y java-1.7.0-openjdk-devel python-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-utils-devel libevent-devel

# Add an unpriviliged user.
RUN adduser mesos
