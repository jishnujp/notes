PORT ?= 8080
IMAGE := quartz-dev

build:
	docker build -f Dockerfile.dev -t $(IMAGE) .

up:
	docker run --rm -p $(PORT):8080 \
		-v $(PWD)/notes:/app/content \
		-v $(PWD)/quartz.config.ts:/app/quartz.config.ts \
		-v $(PWD)/quartz.layout.ts:/app/quartz.layout.ts \
		$(IMAGE)

upd:
	docker run -d --name $(IMAGE) --rm -p $(PORT):8080 \
		-v $(PWD)/notes:/app/content \
		-v $(PWD)/quartz.config.ts:/app/quartz.config.ts \
		-v $(PWD)/quartz.layout.ts:/app/quartz.layout.ts \
		$(IMAGE)

down:
	docker stop $(IMAGE)

reload:
	docker restart $(IMAGE)

logs:
	docker logs -f $(IMAGE)

.PHONY: build up upd down reload logs
