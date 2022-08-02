# Command install.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command's `install` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/${2}/install.sh" ]]; then

    # Execute the `install` script of the command.
    source ${LOOM_COLLECTIONS}/${2}/install.sh

  else

    # Command install.
    sudo apt install -y ${2}

  fi

fi
