#!/usr/bin/env bash

# Load the environment configuration
PID=$1
PATH=$PATH:/opt/factorio/bin
source /opt/factorio/config/factorio.env
source ${FACTORIO_PATH}/bin/init-env.sh
load_config


if kill -TERM "${PID}" 2> /dev/null; then
  sec=1
  while [ "$sec" -le "${FORCED_SHUTDOWN}" ]; do
    if kill -0 "${PID}" 2> /dev/null; then
      echo -n ". "
      sleep 1
    else
      break
    fi
    sec=$((sec+1))
  done
fi

if kill -0 "${PID}" 2> /dev/null; then
  echo "Unable to shut down nicely, killing the process!"
  kill -KILL "${PID}" 2> /dev/null
else
  echo "complete!"
fi

# Open pipe for writing.
exec 3> "${FIFO}"
# Write a newline to the pipe, this triggers a SIGPIPE and causes tail to exit
echo "" >&3
# Close pipe.
exec 3>&-
