#!/bin/bash

decode_jwt(){
  result=$(echo -n $1 | cut -d "." -f 2)
  echo "$result"'=' | base64 --decode  | jq .
}

decode_jwt $(pbpaste)
