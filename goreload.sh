#!/bin/bash

while inotifywait --event modify -qq --recursive /app --include '.*\.go' ; do
    /app/reload.sh
done
