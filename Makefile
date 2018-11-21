develop:
	rm -rf public
	gatsby develop --host 0.0.0.0
stage:
	rm -rf public
	gatsby build
	gatsby serve --port 8000 --host 0.0.0.0
build:
	rm -rf public
	gatsby build
ps:
	docker-compose ps
up-build:
	docker-compose up -d --build
up:
	docker-compose up -d
down:
	docker-compose down
exec:
	docker-compose exec dev bash

