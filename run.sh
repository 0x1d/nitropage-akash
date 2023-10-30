#!/usr/bin/env bash

if [ ! -f "$DB_FILE" ]; then
	echo "$DB_FILE does not exist - initialize database"
	npx prisma migrate dev --name nitro
else
	echo "$DB_FILE exist - update database"
	npx prisma migrate deploy
fi

npm start
