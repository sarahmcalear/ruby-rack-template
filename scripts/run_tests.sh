#!/usr/bin/env bash

function run_tests() {
  rspec -I . .spec/todo_spec.rb
}

function main() {
    run_tests
}

main "$@"
