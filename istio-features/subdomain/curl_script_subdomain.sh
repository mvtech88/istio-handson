#!/bin/bash

# Check if the user has provided an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <fqdn>"
  exit 1
fi

fqdn=$1
version1_count=0
version2_count=0
total_count=0

# Loop for 20 requests
while [[ $total_count -lt 20 ]]
do
  response=$(curl -s "http://$fqdn" | grep Version)
  if [[ $response == *"Version 1"* ]]; then
    ((version1_count++))
  elif [[ $response == *"Version 2"* ]]; then
    ((version2_count++))
  fi
  ((total_count++))

  sleep 1s
done

echo "Total Count Version 1: $version1_count"
echo "Total Count Version 2: $version2_count"

