# What is the command.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # The command's `what` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/${2}/what.sh" ]]; then

    # Execute the `what` script of the command.
    source ${LOOM_COLLECTIONS}/${2}/what.sh

  else

    # What is the indicated application.
    whatis ${2}

  fi

# If it has 3 arguments and argument 2 is `npm`.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then

  # The command's `what` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/npm/${3}/what.sh" ]]; then

    # Execute the `what` script of the command.
    source ${LOOM_COLLECTIONS}/npm/${3}/what.sh

  else

    # What is the indicated application.
    echo -e "${3} (npm) \t     - $(npm view ${3} description)."

  fi

# If you have 4 arguments and the second is `code` and the third is `extensions`.
elif [ $# -eq 4 ] && [ ${2} == "code" ] && [ ${3} == "extensions" ]; then

  # The command's `what` file exists.
  if [[ -f "${LOOM_COLLECTIONS}/code/extensions/${4}/what.sh" ]]; then

    # Execute the `what` script of the command.
    source ${LOOM_COLLECTIONS}/code/extensions/${4}/what.sh

  fi

fi
