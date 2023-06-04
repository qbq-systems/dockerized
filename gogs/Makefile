SHELL:=/bin/bash

db-backup:
	@docker exec gogs_postgres pg_dump -U gogs gogs > gogs-backup.sql

build-and-up: reset
	@docker-compose up --build --remove-orphans

down: reset
	@docker-compose down

reset:
	@reset

up: reset
	@docker-compose up --detach --remove-orphans

up-no-daemon: reset
	@docker-compose up --remove-orphans
