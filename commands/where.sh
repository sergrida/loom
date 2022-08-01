# Where is the command.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command `where` file exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    # Execute the `where` script of the command.
    source ${LOOM_COMMANDS}/${2}/where.sh

  else

    # Where is the indicated application.
    which ${2}

  fi

fi
