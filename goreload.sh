#!/bin/bash

PID=
while true; do
    go run . &
    PID=$!
    inotifywait --event modify -qq --recursive /app --include '.*\.go'
    DATE=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$DATE Reloading"
    pkill -TERM -P $PID
done
