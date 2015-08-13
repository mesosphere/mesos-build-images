FROM mesosbuild/jenkins:ubuntu-14.04-base

# Install dependencies.
RUN apt-get update
RUN apt-get -y install clang-3.6

# Set environment variables.
ENV CC clang-3.6
ENV CXX clang++-3.6

ENV GTEST_FILTER -SlaveRecoveryTest/0.*:MesosContainerizerSlaveRecoveryTest.*:CpuIsolatorTest/1.*:RevocableCpuIsolatorTest.*:LimitedCpuIsolatorTest.*:MemIsolatorTest/*.*:CgroupsAnyHierarchyTest.*:CgroupsAnyHierarchyWithCpuMemoryTest.*:CgroupsAnyHierarchyWithCpuAcctMemoryTest.*:CgroupsNoHierarchyTest.*:CgroupsAnyHierarchyWithFreezerTest.*:CgroupsAnyHierarchyMemoryPressureTest.*:MemoryPressureMesosTest.*:NamespacesPidIsolatorTest.*:UserCgroupIsolatorTest/*.*:ContainerizerTest.*:FsTest.*
