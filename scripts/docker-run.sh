#!/bin/bash

while getopts "p:" arg; do
  case $arg in
    p)
      port="-p $OPTARG"
      ;;
  esac
done

name=${PWD##*/}

docker run --name ${name} -v $(pwd):/usr/src/app ${port} -it node bash
