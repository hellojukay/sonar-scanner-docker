# sonar-scanner-docker
sonar scanner image , base on jdk8 ,alpine linux.
## usage
```shell
docker run 	-rm --it	hellojukay/sonar-scanner:8-alpine-3.0.3.778	sonar-scanner \
	-Dsonar.sources=. \
	-Dsonar.projectKey=${projectKey} \
	-Dsonar.projectName=${projectName} \
	-Dsonar.exclusions=**/*_test.go,**/vendor/** \
	-Dsonar.tests=. \
	-Dsonar.test.inclusions=**/*_test.go \
	-Dsonar.test.exclusions=**/vendor/** \
	-Dsonar.go.coverage.reportPaths=coverage.out \
	-Dsonar.login=${token} \
	-Dsonar.host.url=${sonarHost}

```
## pull
```shell
docker pull hellojukay/sonar-scanner:8-alpine-3.0.3.778
```

## build from source
```shell
make build
```