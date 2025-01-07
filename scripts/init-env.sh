ENVIRONMENT_CONFIG=${FACTORIO_PATH}/config/factorio.env
PATH=$PATH:${FACTORIO_PATH}/bin

function debug() {
  if [ "${DEBUG-0}" -gt 0 ]; then
    echo "DEBUG: $*"
  fi
}

function error() {
  echo "$*" 1>&2
}

function info() {
  echo "$*"
}

function load_config() {
  # unless a path is provided as the first argument,
  # assume there's a "config" file in our current directory.
  config_file="${ENVIRONMENT_CONFIG}"; shift
  debug "Trying to load config file '${config_file}'."

  # check that the file exists
  [ -f "${config_file}" ] || { error "Config file '${config_file}' does not exist!"; return 1; }
  # and we can read it
  [ -r "${config_file}" ] || { error "Unable to read config file '${config_file}'!"; return 1; }
  # then try to source it
  # shellcheck disable=SC1090
  source "${config_file}" || { error "Unable to source config file '${config_file}'!"; return 1; }

  config_defaults
  return $?
}

function config_defaults() {
  debug "Check/Loading config defaults for command '${command}'"

  ME=$(whoami)

  if [ -z "${SERVICE_NAME}" ]; then
    SERVICE_NAME="Factorio"
  fi

  if [ -z "${USERGROUP}" ]; then
    USERGROUP=${USERNAME}
  fi

  if [ -z "${HEADLESS}" ]; then
    HEADLESS=1
  fi

  if [ -z "${UPDATE_EXPERIMENTAL}" ]; then
    UPDATE_EXPERIMENTAL=0
  fi

  if [ -z "${LATEST_HEADLESS_URL}" ]; then
    if [ "${UPDATE_EXPERIMENTAL}" -gt 0 ]; then
      LATEST_HEADLESS_URL="https://www.factorio.com/get-download/latest/headless/linux64"
    else
      LATEST_HEADLESS_URL="https://www.factorio.com/get-download/stable/headless/linux64"
    fi
  fi

  if [ -z "${UPDATE_PREVENT_RESTART}" ]; then
    UPDATE_PREVENT_RESTART=0
  fi

  if [ -z "${UPDATE_PERSIST_TMPDIR}" ]; then
    UPDATE_PERSIST_TMPDIR=0
  fi

  if [ -z "${NONCMDPATTERN}" ]; then
    NONCMDPATTERN='(^\s*(\s*[0-9]+\.[0-9]+|\)|\())|(Players:$)'
  fi

  if [ -z "${FACTORIO_PATH}" ]; then
    FACTORIO_PATH="/opt/factorio"
  fi

  if [ -z "${BINARY}" ]; then
    BINARY="${FACTORIO_PATH}/bin/x64/factorio"
  fi

  if [ -z "${BINARYB}" ]; then
    BINARYB="${BINARY}"
  fi

  if [ -z "${ALT_GLIBC}" ]; then
    ALT_GLIBC=0
  fi

  if [ -z "${WAIT_PINGPONG}" ]; then
    WAIT_PINGPONG=0
  fi

  if [ -z "${FORCED_SHUTDOWN}" ]; then
    FORCED_SHUTDOWN=15
  fi

  if [ -z "${ADMINLIST}" ]; then
    ADMINLIST="${FACTORIO_PATH}/data/server-adminlist.json"
  fi

  if [ "${ALT_GLIBC}" -gt 0 ]; then
    if [ -z "${ALT_GLIBC_DIR}" ]; then
      ALT_GLIBC_DIR="/opt/glibc-2.18"
    fi

    if [ -z "${ALT_GLIBC_VER}" ]; then
      ALT_GLIBC_VER="2.18"
    fi

    # flip BINARY to include alt glibc
    oldbinary="${BINARY}"
    BINARY="${ALT_GLIBC_DIR}/lib/ld-${ALT_GLIBC_VER}.so --library-path ${ALT_GLIBC_DIR}/lib ${oldbinary}"
    echo ${BINARY}
    EXE_ARGS_GLIBC="--executable-path ${BINARYB}"
  fi

  if [ -z "${FCONF}" ]; then
    FCONF="${FACTORIO_PATH}/config/config.ini"
  fi

  if [ -z "${SERVER_SETTINGS}" ]; then
    SERVER_SETTINGS="${FACTORIO_PATH}/data/server-settings.json"
  fi

  if [ -z "${SAVELOG}" ]; then
    SAVELOG=0
  fi

  if [ -n "${PORT}" ]; then
    PORT="--port ${PORT}"
  fi

  if [ -n "${ENABLE_RCON}" ]; then
    if [ -z "${RCON_BIND_IP}" ]; then
      RCON_BIND_IP="0.0.0.0"
    fi

    if [ -z "${RCON_BIND_PORT}" ]; then
      RCON_BIND_PORT="27015"
    fi

    if [ -z "${RCON_PASSWORD}" ]; then
      echo "RCON_PASSWORD is not set, please set it in ${ENVIORNMENT_CONFIG}"
      exit 1
    fi

    RCON_ARGS="--rcon-bind ${RCON_BIND_IP}:${RCON_BIND_PORT} --rcon-password ${RCON_PASSWORD}"
  fi

  if [ -z "${INSTALL_CACHE_TAR}" ]; then
    INSTALL_CACHE_TAR=0
  fi

  if [ -z "${INSTALL_CACHE_DIR}" ]; then
    INSTALL_CACHE_DIR=/tmp/factorio-install.cache
  fi

  if ! [ -e "${BINARYB}" ]; then
    error "Could not find factorio binary! ${BINARYB}"
    error "(if you store your binary some place else, override BINARY='/your/path' in the config)"
    return 1
  fi

  if ! [ -e "${SERVER_SETTINGS}" ]; then
    error "Could not find factorio server settings file: ${SERVER_SETTINGS}"
    error "Update your config and point SERVER_SETTINGS to a modified version of data/server-settings.example.json"
    return 1
  fi

  if ! [ -e "${FCONF}" ]; then
    echo "Could not find factorio config file: ${FCONF}"
    echo "If this is the first time you run this script you need to generate the config.ini by starting the server manually."
    echo "(also make sure you have a save to run or the server will not start)"
    echo
    echo "Create save: sudo -u ${USERNAME} ${BINARY} --create ${FACTORIO_PATH}/saves/my_savegame ${EXE_ARGS_GLIBC}"
    echo "Start server: sudo -u ${USERNAME} ${BINARY} --start-server-load-latest ${EXE_ARGS_GLIBC}"
    echo
    echo "(If you rather store the config.ini in another location, set FCONF='/your/path' in this scripts config file)"
    return 1
  fi

  if [ -z "${WRITE_DIR}" ]; then
    # figure out the write-data path (where factorio looks for saves and mods)
    # Note - this is a hefty little operation, possible cause of head ache down the road
    # as it relies on the factorio write dir to live ../../ up from the binary if __PATH__executable__
    # is used in the config file.. for now, that's the default so cross your fingers it will not change ;)
    debug "Determining WRITE_DIR based on ${FCONF}, IF you edited write-data from the default, this probably fails"
    WRITE_DIR=$(realpath $(dirname "$(grep "^write-data=" "$FCONF" |cut -d'=' -f2 |sed -e 's#__PATH__executable__#'"$(dirname ${BINARYB})"/..'#g')"))
  fi
  debug "write path: $WRITE_DIR"

  if [ -z "${FIFO}" ];then
    FIFO="${WRITE_DIR}/server.fifo"
  fi

  if [ -z "${CMDOUT}" ];then
    CMDOUT="${WRITE_DIR}/server.out"
  fi

  # Finally, set up the invocation
  INVOCATION="${BINARY} --config ${FCONF} ${PORT} --start-server-load-latest --server-settings ${SERVER_SETTINGS} --server-adminlist ${ADMINLIST} ${RCON_ARGS}"
  if [ -n "${WHITELIST}" ] && [ -e "${WHITELIST}" ]; then
    INVOCATION+=" --server-whitelist ${WHITELIST} --use-server-whitelist"
  fi
  if [ -n "${BANLIST}" ] && [ -e "${BANLIST}" ]; then
    INVOCATION+=" --server-banlist ${BANLIST}"
  fi
  INVOCATION+=" ${EXTRA_BINARGS}"

  return 0
}


function send_cmd(){
  NEED_OUTPUT=0
  if [ "$1" == "-o" ]; then
    NEED_OUTPUT=1
    shift
  fi
  if is_running; then
    if [ -p "${FIFO}" ]; then
      # Generate two unique log markers
      TIMESTAMP=$(date +"%s")
      START="FACTORIO_INIT_CMD_${TIMESTAMP}_START"
      END="FACTORIO_INIT_CMD_${TIMESTAMP}_END"

      # Whisper that unknown player to place start marker in log
      echo "/w $START" > "${FIFO}"
      # Run the actual command
      echo "$*" > "${FIFO}"
      # Whisper that unknown player again to place end marker in log after the command terminated
      echo "/w $END" > "${FIFO}"

      if [ ${NEED_OUTPUT} -eq 1 ]; then
        # search for the start marker in the log file, then follow and print the log output in real time until the end marker is found
        sleep 1
        awk "/Player $START doesn't exist./{flag=1;next}/Player $END doesn't exist./{exit}flag" < "${CMDOUT}"
      fi
    else
      echo "${FIFO} is not a pipe!"
      return 1
    fi
  else
    echo "Unable to send cmd to a stopped server!"
    return 1
  fi
}

function usage() {
  echo -e "\
Usage: $0 COMMAND

Available commands:
  start \t\t\t\t\t\t Starts the server
  stop \t\t\t\t\t\t\t Stops the server
  restart \t\t\t\t\t\t Restarts the server
  status \t\t\t\t\t\t Displays server status
  players-online \t\t\t\t\t Shows online players
  players \t\t\t\t\t\t Shows all players
  cmd [command/message] \t\t\t\t Open interactive commandline or send a single command to the server
  log [--tail|-t] \t\t\t\t\t Print the full server log, optionally tail the log to follow in real time
  chatlog [--tail|-t] \t\t\t\t\t Print the current chatlog, optionally tail the log to follow in real time
  new-game name [map-gen-settings] [map-settings] \t Stops the server and creates a new game with the specified
  \t\t\t\t\t\t\t name using the specified map gen settings and map settings json files
  save-game name \t\t\t\t\t Stops the server and saves game to specified save
  load-save name \t\t\t\t\t Stops the server and loads the specified save
  install [tarball] \t\t\t\t\t Installs the server with optional specified tarball
  \t\t\t\t\t\t\t (omit to download and use the latest headless server from Wube)
  update [--dry-run] \t\t\t\t\t Updates the server
  invocation \t\t\t\t\t\t Outputs the invocation for debugging purpose
  listcommands \t\t\t\t\t\t List all init-commands
  listsaves \t\t\t\t\t\t List all saves
  version \t\t\t\t\t\t Prints the binary version
  mod \t\t\t\t\t\t\t Manage mods (see $0 mod help for more information)
  help \t\t\t\t\t\t\t Shows this help message
"
}

function wait_pingpong() {
  until ping -c1 pingpong1.factorio.com &>/dev/null; do :; done
  until ping -c1 pingpong2.factorio.com &>/dev/null; do :; done
}

