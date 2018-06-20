SHELL := /bin/bash
#	go build -ldflags '-w -extldflags "-static"' -o testbin
all:
	go build -a -installsuffix cgo -ldflags '-w' -o testbin
	docker build -t juzhen/testbin:v1 ./
	distribute-image.sh juzhen/testbin:v1
	kubectl apply -f ./testbin.yaml

