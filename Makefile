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
	mkdir -p srv
	chown ${UID}:${GID} srv

.PHONY: clean
clean:
	rm -rf srv
