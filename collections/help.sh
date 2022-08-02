# Command help.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command's `help` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/${2}/help.sh" ]]; then

    # Execute the `help` script of the command.
    source ${LOOM_COLLECTIONS}/${2}/help.sh

  else

    # Command help.
    ${2} --help

  fi

fi
