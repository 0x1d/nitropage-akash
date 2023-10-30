SHELL = bash
UID := $(shell id -u)
GID := $(shell id -g)

DOCKER_TARGETS = build push up down

.PHONY: ${DOCKER_TARGETS}
${DOCKER_TARGETS}:
	docker compose $@

.PHONY: init
init:
	cp example.env .env
	mkdir -p media db
	chown ${UID}:${GID} media db

.PHONY: clean
clean:
	rm -rf db media
