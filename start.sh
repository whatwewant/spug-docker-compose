#!/usr/bin/env bash

if [ ! -f "$PWD/.env" ]; then
  cp .env.example .env
fi

docker-compose up -d

docker-compose exec spug create_admin admin spug.dev