#!/bin/bash

#!/bin/bash

# Function to recursively kill child processes
function kill_tree {
    local parent_pid=$1
    local child_pids=$(pgrep -P $parent_pid)

    for pid in $child_pids; do
        kill_tree $pid
    done

    kill $parent_pid
}

function now {
    echo "$(date "+%Y-%m-%d %H:%M:%S")"
}

printf "%s Starting goreload...\n" "$(now)"
while true; do
    printf "%s Running doer.sh..." "$(now)"
    /doer.sh &
    inotifywait --event modify -qq --recursive /app --include '.*\.go'
    printf "%s Stopping doer.sh..." "$(now)"
    kill_tree $(pgrep -f doer.sh)
done
