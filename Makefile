IMAGE_NAME=carlositline/smeeio
IMAGE_VERSION=$(shell cat VERSION)

build:
	@docker build -t $(IMAGE_NAME) .

docker-tag:
	@docker tag $(IMAGE_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

docker-push:
	@docker push $(IMAGE_NAME):$(IMAGE_VERSION)

get-version:
	@docker run --rm -it $(IMAGE_NAME) -v > VERSION
	@cat VERSION

run:
	@docker run --rm -it $(IMAGE_NAME)

.PHONY: build docker-tag docker-push get-version

all: build get-version docker-tag docker-push