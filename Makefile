.PHONY: run

run:
	go run ./main.go

.PHONY: build docker.run docker.up docker.down docker.rm

build:	## Build backend Docker image
	docker build . \
		-t develop \
		--no-cache \

docker.run:
	docker run -d \
	-p 8001:8001 \
	--name develop develop

docker.up:
	docker container start develop

docker.down:
	docker container stop develop

docker.rm:
	docker rm -f develop