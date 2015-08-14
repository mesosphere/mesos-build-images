FROM mesosbuild/jenkins:ubuntu-12.04-base

# Install dependencies.
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update
RUN apt-get -y install gcc-4.8 g++-4.8

# Set environment variables.
ENV CC gcc-4.8
ENV CXX g++-4.8

ENV GTEST_FILTER -SlaveRecoveryTest/0.*:MesosContainerizerSlaveRecoveryTest.*:CpuIsolatorTest/1.*:RevocableCpuIsolatorTest.*:LimitedCpuIsolatorTest.*:MemIsolatorTest/*.*:CgroupsAnyHierarchyTest.*:CgroupsAnyHierarchyWithCpuMemoryTest.*:CgroupsAnyHierarchyWithCpuAcctMemoryTest.*:CgroupsNoHierarchyTest.*:CgroupsAnyHierarchyWithFreezerTest.*:CgroupsAnyHierarchyMemoryPressureTest.*:MemoryPressureMesosTest.*:NamespacesPidIsolatorTest.*:UserCgroupIsolatorTest/*.*:ContainerizerTest.*:FsTest.*
