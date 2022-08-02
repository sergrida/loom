# Command version.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command's `version` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/${2}/version.sh" ]]; then

    # Execute the `version` script of the command.
    source ${LOOM_COLLECTIONS}/${2}/version.sh

  else

    # Command version.
    ${2} --version

  fi

fi
