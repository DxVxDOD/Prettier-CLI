#!/usr/bin/env bats

load test_helper

setup() {
  rm -rf testing && mkdir testing
  cd testing || exit
}

teardown() {
  cd ..
  rm -rf testing
}

@test "it executes new command" {
  run "$CREATE_P" new
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "Error: Please specify if ESLint is being used" ]
}

@test 'it answered if ESLint is being used' {
  run "$CREATE_P" new yes
  [ "$status" -eq 0 ]
  ["${lines[0]}" = "Installing prettier with ESLint plugin"]
}