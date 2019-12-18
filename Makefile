SHELL := /bin/bash

start:
	docker run -ti --rm --name WRLinux -v $(pwd)/wrlinux:/home/yocto grimsleepless/windriver_base

build:
	docker build -t grimsleepless/windriver_base .

push:
	docker push grimsleepless/windriver_base

