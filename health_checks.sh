#!/usr/bin/env bash

echo "Starting health checks as process $$"

while true; do
  echo -e "HTTP/1.1 200\n\nOK" | nc -l 9999
  sleep 1
done
