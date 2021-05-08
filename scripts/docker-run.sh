#!/bin/bash

port=""
while getopts "p:" arg; do
  case $arg in
    p)
      for I  in "$OPTARG"
      do
        port="-p $I $port"
      done
      ;;
  esac
done

name=${PWD##*/}

docker run --name ${name} -v $(pwd):$(pwd) --workdir $(pwd) ${port} -it node:12 bash
