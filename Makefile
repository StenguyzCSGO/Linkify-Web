DEV_COMPOSE_FILE=docker-compose-dev.yml
PROD_DOCKERFILE=Dockerfile.prod

.PHONY: up
up:
	docker compose -f $(DEV_COMPOSE_FILE) up --build

.PHONY: down
down:
	docker compose -f $(DEV_COMPOSE_FILE) down

.PHONY: prod
prod:
	make clean
	-git stash
	-git stash drop
	-git switch main
	-git pull --ff-only
	-sudo rm -rf .output/public
	mkdir -p .output/public
	-sudo chown -R $(shell id -u):$(shell id -g) .output
	DOCKER_BUILDKIT=1 docker build -f $(PROD_DOCKERFILE) --target public --output type=local,dest=.output/public .
	DOCKER_BUILDKIT=1 docker build -f $(PROD_DOCKERFILE) --target server -t linkify-web-host .
	-@docker rm -f linkify-web-host >/dev/null 2>&1 || true
	docker run -d --name linkify-web-host -p 8080:80 --rm linkify-web-host

.PHONY: stop
stop:
	-@docker rm -f linkify-web-host || true

.PHONY: status
status:
	docker ps --filter name=linkify-web-host --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

.PHONY: logs
logs:
	docker logs -f linkify-web-host

.PHONY: clean
clean:
	docker compose -f $(DEV_COMPOSE_FILE) down -v --rmi all
	sudo rm -rf .nuxt node_modules .output

.PHONY: reboot
reboot:
	make down
	make clean
	make up