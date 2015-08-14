DOCKER_REPO=mesosbuild/jenkins

ALL=ubuntu-14.04-base ubuntu-14.04-gcc-4.8 ubuntu-14.04-clang-3.6 ubuntu-12.04-base \
	ubuntu-12.04-gcc-4.8 centos-7-base centos-7-gcc-4.8


.PHONY: all $(ALL)

ubuntu-12.04-base:
	docker build -t $(DOCKER_REPO):$@ $@

ubuntu-12.04-gcc-4.8:
	docker build -t $(DOCKER_REPO):$@ $@

ubuntu-14.04-base:
	docker build -t $(DOCKER_REPO):$@ $@

ubuntu-14.04-gcc-4.8: ubuntu-14.04-base
	docker build -t $(DOCKER_REPO):$@ $@

centos-7-base:
	docker build -t $(DOCKER_REPO):$@ $@

centos-7-gcc-4.8: centos-7-base
	docker build -t $(DOCKER_REPO):$@ $@

all: $(ALL)
