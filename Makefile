.PHONY: up
up:
	docker compose up --build

.PHONY: down
down:
	docker compose down

.PHONY: build
build:
	docker compose run --rm -u "$(id -u):$(id -g)" build npm run generate
	make clean

.PHONY: clean
clean:
	docker compose down -v --rmi all
	sudo rm -rf .nuxt node_modules