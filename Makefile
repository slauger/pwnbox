.DEFAULT_GOAL := build

CONTAINER_NAME=docker.io/cmon2k/pwnbox
CONTAINER_TAG=latest

build:
	docker build -t $(CONTAINER_NAME):$(CONTAINER_TAG) .

test:
	docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(shell pwd):/src:ro gcr.io/gcp-runtimes/container-structure-test:latest test --image $(CONTAINER_NAME):$(CONTAINER_TAG) --config /src/tests/image.tests.yaml

push:
	docker push $(CONTAINER_NAME):$(CONTAINER_TAG)

run:
	docker run -it -v $(PWD):/workspace $(CONTAINER_NAME):$(CONTAINER_TAG) /bin/bash
