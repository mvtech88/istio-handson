#!/bin/bash

version1_count=0
version2_count=0
total_count=0

while :
do
  response=$(curl  -s  'http://myapp.loc/index.php' | grep Version)
  if [[ $response == *"Version 1"* ]]; then
    ((version1_count++))
  elif [[ $response == *"Version 2"* ]]; then
    ((version2_count++))
  fi

  ((total_count++))

  if [[ $total_count -eq 20 ]]; then
    version1_percentage=$(echo "scale=2; ($version1_count/$total_count)*100" | bc)
    version2_percentage=$(echo "scale=2; ($version2_count/$total_count)*100" | bc)

    echo "Version 1: $version1_percentage%"
    echo "Version 2: $version2_percentage%"
    break
  fi

  sleep 1s
done
