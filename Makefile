DOCKER_REPO=mesosbuild/jenkins


ALL=ubuntu-14.04-base ubuntu-14.04-gcc-4.8 ubuntu-14.04-clang-3.6

.PHONY: all $(ALL)

ubuntu-14.04-base:
	docker build -t $(DOCKER_REPO):$@ $@

ubuntu-14.04-gcc-4.8: ubuntu-14.04-base
	docker build -t $(DOCKER_REPO):$@ $@

all: $(ALL)
