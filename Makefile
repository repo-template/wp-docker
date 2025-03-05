.PHONY: init run up down ps logs

init:
	test -f .env || cp .env.template .env

run: up logs

up:
	docker compose up -d --build

down:
	docker compose down

ps:
	docker compose ps

logs:
	docker compose logs -f

build:
	docker compose build --no-cache
