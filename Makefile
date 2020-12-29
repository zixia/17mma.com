#
# Credit: Huan LI <zixia@zixia.net> github.com/huan
#
.PHONY: test
test:
	./scripts/test.sh

.PHONY: build
build:
	docker build -t 17mma.com .

.PHONY: run
run:
	./scripts/run.sh

.PHONY: pull
pull:
	docker pull ghcr.io/zixia/apache-php56:onbuild
	docker pull ghcr.io/zixia/17mma.com

.PHONY: clean
clean:
	docker rmi 17mma.com

.PHONY: version
version:
	./scripts/version.sh
