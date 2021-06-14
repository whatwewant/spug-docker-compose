#!/usr/bin/env bash

cp .env.example .env

docker-compose up -d

docker-compose exec spug create_admin admin spug.dev