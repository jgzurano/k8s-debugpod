IMAGE = k8s-debugpod
TAG = latest

info:
	@echo $(TAG)
	@echo $(IMAGE)

run:
	docker run --rm -it \
		$(IMAGE):$(TAG)

build:
	docker build -t $(IMAGE):$(TAG) .
