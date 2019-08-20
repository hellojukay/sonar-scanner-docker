image := hellojukay/sonar-scanner:8-alpine-3.0.3.778

build:
	docker build -t $(image) .

push:
	docker push $(image)