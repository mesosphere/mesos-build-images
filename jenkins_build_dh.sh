#!/bin/bash

set -xe

# This is the script used by ASF Jenkins to build and check Mesos for
# a given OS and compiler combination.

# Require the following environment variables to be set.
: ${OS:?"Environment variable 'OS' must be set"}
: ${CONFIGURATION:?"Environment variable 'CONFIGURATION' must be set"}

# Change to the root of Mesos repo for docker build context.
MESOS_DIRECTORY=$( cd "$( dirname "$0" )/.." && pwd )
cd "$MESOS_DIRECTORY"

# Generate a random image tag.
TAG=mesos-$(date +%s)-$RANDOM

# Set a trap to delete the image on exit.
# trap "docker rmi $TAG" EXIT

# Create the docker image containing the source code to build.
echo "
FROM mesosbuild/jenkins:$OS
WORKDIR mesos
COPY . /mesos/
CMD ./bootstrap && ./configure \$CONFIGURATION && DISTCHECK_CONFIGURE_FLAGS="\$CONFIGURATION" GLOG_v=1 MESOS_VERBOSE=1 make -j8 distcheck " > Dockerfile


docker build -t $TAG .

# Uncomment below to print kernel log incase of failures.
# trap "dmesg" ERR

# Now run the image.
# NOTE: We run in 'privileged' mode to circumvent permission issues
# with AppArmor. See https://github.com/docker/docker/issues/7276.
#docker run --privileged --rm $TAG
docker run --privileged $TAG
