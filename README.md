# Linkify Web

Marketing and landing website for the Linkify Discord bot.

This is a Nuxt 4 front-end served by Nginx in production. Daily tasks (dev, prod, cleanup) are driven by `make` aliases provided in this repo.

## Stack

- Framework: Nuxt 4 (Vue 3, file‑based routing, hybrid/static rendering)
- Language: TypeScript
- UI: @nuxt/ui with Iconify icon sets (lucide, simple‑icons)
- Images: @nuxt/image
- Dev runtime: Node 20 (inside Docker)
- Containers: Docker + Docker Compose
- Web server (prod): Nginx
- Build: Multi‑stage Dockerfile that runs `nuxt generate` and serves static output from `.output/public`

## Prerequisites

- Docker and Docker Compose
- Make
- Git (used by the `make prod` target)

## Development (Docker)

Start the Nuxt dev server with hot reload at http://localhost:3000.

```bash
make up
```

- Stop dev and remove containers:

```bash
make down
```

- Restart from a clean state (down + clean + up):

```bash
make reboot
```

## Production (Docker + Nginx)

Generate the static site, build the Nginx image, and run a container exposed at http://localhost:8080.

```bash
make prod
```

Helpful commands for local prod:

- Stop the prod Nginx container:

```bash
make stop
```

- Check container status (name, state, ports):

```bash
make status
```

- Tail container logs:

```bash
make logs
```

## Cleanup

Remove dev containers, volumes and images, and delete local artifacts (`.nuxt`, `node_modules`, `.output`).

```bash
make clean
```

## Make aliases

- `make up` — Start the dev environment (Docker Compose) on port 3000.
- `make down` — Stop and remove the dev environment.
- `make reboot` — Down + clean + up for a fresh dev setup.
- `make prod` — Static build + Nginx image and run on port 8080.
- `make stop` — Stop the prod container (`linkify-web-host`).
- `make status` — Show the prod container status.
- `make logs` — Stream logs of the prod container.
- `make clean` — Clean local environment (dev + artifacts).

## Technical notes

- Dev: Docker Compose uses `Dockerfile.dev` and mounts the source for hot reload. Nuxt binds to `0.0.0.0:3000` via `NUXT_HOST`/`NUXT_PORT`.
- Prod: `Dockerfile.prod` is multi‑stage; it generates static output (`.output/public`) and serves it with Nginx (see `nginx.conf`).
- The prod flow tags the image as `linkify-web-host` and runs it on port `8080:80`.

## Local dev without Docker (optional)

If you have Node.js installed, you can run Nuxt locally:

```bash
npm install
npm run dev
```

## Troubleshooting

- Port 3000 or 8080 already in use: stop the conflicting service or change the port.
- Permissions on `.output`: `make prod` fixes ownership, but you may need `sudo` depending on your system.
- Stale cache: run `make clean` then `make up` or `make prod`.

## About

This repository is the marketing site for the Linkify Discord bot. For the bot itself, see the sibling repository “Linkify-Bot” in the same workspace.
