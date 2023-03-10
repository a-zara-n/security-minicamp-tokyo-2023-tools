IMAGE_NAME = "security-mini-camp-toolbox"
build:
	docker build --no-cache -t $(IMAGE_NAME) .
shell:
	docker run -v $(PWD)/assets:/tmp/minicamp -it --rm $(IMAGE_NAME) 