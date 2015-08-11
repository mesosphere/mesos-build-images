.PHONY: all

DOCKER_REPO=mesosbuild/jenkins

ubuntu-14.04-base: ubuntu-14.04-base/Dockerfile
	docker build -t $(DOCKER_REPO):$@ $@

ubuntu-14.04-gcc-4.8: ubuntu-14.04-gcc-4.8/Dockerfile
	docker build -t $(DOCKER_REPO):$@ $@

