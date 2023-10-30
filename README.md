# Nitropage on Akash

This repository contains an example deployment for the `Nitropage Starter` project.  
It uses a SQLite database and is intended for demo purpose only.  

This Akash template can be deployed as is or customized as described in the following sections.

## Build

Create and configure `.env`, then run the Docker build.

```
make init
make build
```

If you changed `NP_IMAGE` in the `.env` file, you may now want to push the image to your Docker registry.

```
make push
```

## Run

To start Nitropage locally, use `docker compose`.

```
make up
```

As soon as the container is up, open http://localhost:3000/admin to register your admin account.

