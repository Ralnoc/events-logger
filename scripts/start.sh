#!/usr/bin/env bash

# Load the environment configuration
PATH=$PATH:/opt/factorio/bin
source /opt/factorio/config/factorio.env
source ${FACTORIO_PATH}/bin/init-env.sh
load_config


# ensure we have a binary to start
if ! [ -e "${BINARYB}" ]; then
  echo "Can't find ${BINARYB}. Please check your config!"
  exit 1
fi

## ensure we have a fifo
if ! [ -p "${FIFO}" ]; then
  if ! mkfifo ${FIFO}; then
    echo "Failed to create pipe for stdin, if applicable, remove ${FIFO} and try again"
    exit 1
  fi
fi

if ! [ -e ${ADMINLIST} ]; then
  debug "${ADMINLIST} does not exist!  Creating empty file."
  echo "[]" > ${ADMINLIST}
  chown "${USERNAME}:${USERGROUP}" ${ADMINLIST}
fi

if [ ${WAIT_PINGPONG} -gt 0 ]; then
  wait_pingpong
fi

tail -f ${FIFO} |${INVOCATION} ${EXE_ARGS_GLIBC}