# Command information.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command's `info` file exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    # Execute the `info` script of the command.
    source ${LOOM_COMMANDS}/${2}/info.sh

  else

    # Command information.
    info ${2}

  fi

fi
