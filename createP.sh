#!/bin/bash

case $1 in
  new)
    shift
    if [ "$1" = "" ]; then
      echo "Error: Please specify if ESLint is being used"
      exit 1
    else
      echo "You are using ESLint '${1}'"
    fi
    ;;
  *)
    echo "Error: Unrecognized command. Please refer to the documentation for all functionality."
    exit 1
    ;;
esac