#!/bin/sh

./genere_conf.sh

alias wp="docker-compose run --rm wp_cli"

wp core download --locale=fr_FR --force
