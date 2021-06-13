# [Spug Docker Compose](https://github.com/whatwewant/spug-docker-compose)

![https://hub.docker.com/repository/docker/whatwewant/spug](https://img.shields.io/docker/v/whatwewant/spug)
![](https://img.shields.io/badge/docker%20build-automated-066da5)

### Getting Started
* Solution 1: Automatically Startup
  * Run `./start.sh`
* Solution 2: Manual Startup (RECOMMEND)
  * Step 1
    * Copy `.env.example` to `.env`, then update environments
  * Step 2
    * Run `docker-compose up`

### Create Admin User
* Run `docker-compose exec spug create_admin admin spug.dev`
  * username: `admin`
  * password: `spug.dev`

### Version Histories
* v2.3.16

### FAQ
* How to build fast
  * Use Docker Image instead of building in `docker-compose.yml`
* How to connect exist existing mysql/redis ?
  * Just update your `.env`
* Can i use `sqlite3` as database ? and where is the database file ?
  * Of course. just remove `DB_ENGINE=sqlite3`, the database file path is: `/spug/spug_api/db.sqlite3`

### License
[MIT](./LICENSE)