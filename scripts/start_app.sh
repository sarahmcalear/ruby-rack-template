#!/usr/bin/env bash

function start_app() {
  bundle exec thin -R config.ru -a 127.0.0.1 -p 8080 start
}

function main() {
  start_app
}

main "$@"