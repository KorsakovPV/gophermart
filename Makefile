
.PHONY: db
db:
	docker-compose -f ./docker-compose.yml up postgres_db

.PHONY: api
api:
	docker-compose -f ./docker-compose.yml up krakend_ce


.PHONY: migration_new
migration_new:
	docker-compose -f ./docker-compose.migrations.yml up migration_db_add

.PHONY: migration_up
migration_up:
	docker-compose -f ./docker-compose.migrations.yml up migration_db_up


.PHONY: migration_down
migration_down:
	docker-compose -f ./docker-compose.migrations.yml up migration_db_down


.PHONY: migration_force
migration_force:
	docker-compose -f ./docker-compose.migrations.yml up migration_db_force


.PHONY: test
run_autotest:
	go test ./...


	