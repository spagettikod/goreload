#!/bin/bash

PID=
DATE=$(date "+%Y-%m-%d %H:%M:%S")
echo "$DATE Starting up..."
while true; do
    go run . &
    PID=$!
    DATE=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$DATE Running..."
    inotifywait --event modify -qq --recursive /app --include '.*\.go'
    DATE=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$DATE Reloading"
    pkill -TERM -P $PID
done
