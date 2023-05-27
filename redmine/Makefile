SHELL:=/bin/bash

db-backup:
	@docker exec redmine_postgres pg_dump -U redmine redmine > redmine-backup.sql

down: reset
	@docker-compose down

reset:
	@reset

up: reset
	@docker-compose up --detach --remove-orphans

up-no-daemon: reset
	@docker-compose up --remove-orphans
