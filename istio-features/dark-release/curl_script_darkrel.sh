#!/bin/bash

version1_count=0
version2_count=0
total_count=0

while [[ $total_count -lt 20 ]]
do
  response=$(curl -s -X GET "http://myapp.loc" -H "Content-Type: application/json" --cookie "version=V2" | grep Version)
  if [[ $response == *"Version 1"* ]]; then
    ((version1_count++))
  elif [[ $response == *"Version 2"* ]]; then
    ((version2_count++))
  fi
  ((total_count++))

  sleep 1s
done

echo "Total Version 1: $version1_count"
echo "Total Version 2: $version2_count"
