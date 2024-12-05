#!/bin/bash

while :
do
  response=$(curl -s -o /dev/null -w "%{http_code}" 'http://myapp.loc/index.php')

  if [[ $response -eq 500 ]]; then
    echo "500 Internal Server Error"
  elif [[ $response -eq 200 ]]; then
    echo "200 OK"
  fi

  sleep 1s
done
