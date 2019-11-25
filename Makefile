IMAGE = k8s-debugpod
TAG = latest

info:
	@echo $(TAG)
	@echo $(IMAGE)

exec:
	docker run --rm -it \
		$(IMAGE):$(TAG)

build:
	docker build -t $(IMAGE):$(TAG) .

run: set-executable
	./run_debugpod.sh

set-executable:
	chmod +x *.sh
