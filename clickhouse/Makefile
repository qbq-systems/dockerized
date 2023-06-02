SHELL:=/bin/bash

down: reset
	@docker-compose down

reset:
	@reset

up: reset
	@docker-compose up --detach --remove-orphans

up-no-daemon: reset
	@docker-compose up --remove-orphans
