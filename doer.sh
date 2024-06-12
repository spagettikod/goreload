#!/bin/bash

# cleanup() {
#     echo "Script terminated. Killing all processes."
#     pkill -TERM -P $$
#     exit 1
# }

# Trap the termination signal
# trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT

go run .
