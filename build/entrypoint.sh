#!/bin/sh
# Copyright: (c) OpenSpug Organization. https://github.com/openspug/spug
# Copyright: (c) <spug.dev@gmail.com>
# Released under the AGPL-3.0 License.

set -e

# init nginx
if [ ! -d /run/nginx ]; then
    mkdir -p /run/nginx
    chown -R nginx.nginx /run/nginx
fi

# @TODO updatedb on startup
cd /spug/spug_api
python manage.py initdb

# Create Admin User
#   Shell:
#     create_admin admin spug.dev
#   Docker Compose
#     docker-compose exec spug create_admin admin spug.dev

nginx
supervisord -c /etc/supervisord.conf