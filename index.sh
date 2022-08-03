#!/bin/bash

# If the `.env` file exists.
if [ -f ${LOOM_FOLDER}/.env ]; then

  # Read the variables from the `.env` file.
  source ${LOOM_FOLDER}/.env

else

  # Read the variables from the `default.env` file.
  source ${LOOM_FOLDER}/default.env

fi

# `LOOM_RUN` array. With the first argument cut off for every `.` it has.
SEARCH=(${1//\// })

# Variable with the address of the LOOM application's `collections` folder.
SCRIPT_RUN=${LOOM_COLLECTIONS}

# Run each element of the `LOOM_RUN` array.
for (( I = 0; I < ${#SEARCH[@]}; I ++ )); do

  # Executes for each element in the address.
  for X in ${SCRIPT_RUN}/*; do

    # List the elements in the address.
    SCRIPT=${X//"${SCRIPT_RUN}/"/}

    # If the file or folder has the abbreviation at the beginning.
    if [[ "$SCRIPT" == "${SEARCH[$I]}"* ]]; then

      # Adds the element to the `SEARCH` array.
      SCRIPT_RUN=${SCRIPT_RUN}/${SCRIPT}

      # Stop the loop.
      break

    fi

  done

done

# Remove unnecessary variables.
unset SCRIPT

# If the address file exists.
if [ -f ${SCRIPT_RUN} ]; then

  # If the script has the extension `js`.
  if [[ "$SCRIPT_RUN" == *".js" ]]; then

    # Run the script with Node.js.
    node ${SCRIPT_RUN} "$@"

  # If the script has the extension `py`.
  elif [[ "$SCRIPT_RUN" == *".py" ]]; then

    # Run the script with Python.
    python3 ${SCRIPT_RUN} "$@"

  # If the script has the extension `pl`.
  elif [[ "$SCRIPT_RUN" == *".pl" ]]; then

    # Run the script with Perl.
    perl ${SCRIPT_RUN} "$@"

  # If the script has the extension `sh`.
  elif [[ "$SCRIPT_RUN" == *".sh" ]]; then

    # Run the script with Bash.
    source ${SCRIPT_RUN} "$@"

  else

    # Run the program.
    ${SCRIPT_RUN} "$@"

  fi

else

  # The Script Folder exists.
  if [ -d ${SCRIPT_RUN} ]; then

    # The search includes the abbreviation for `help`.
    if [[ "help" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `help` command with the search.
      ${LOOM} help $(basename ${SCRIPT_RUN})

    # The search includes the abbreviation for `info`.
    elif [[ "info" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `info` command with the search.
      ${LOOM} info $(basename ${SCRIPT_RUN})

    # The search includes the abbreviation for `install`.
    elif [[ "install" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `install` command with the search.
      ${LOOM} install $(basename ${SCRIPT_RUN})

    # The search includes the abbreviation for `version`.
    elif [[ "version" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `version` command with the search.
      ${LOOM} version $(basename ${SCRIPT_RUN})

    # The search includes the abbreviation for `whatis`.
    elif [[ "whatis" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `whatis` command with the search.
      ${LOOM} whatis $(basename ${SCRIPT_RUN})

    # The search includes the abbreviation for `where`.
    elif [[ "where" == "${SEARCH[1]}"* ]]; then

      # Execute LOOM's `where` command with the search.
      ${LOOM} where $(basename ${SCRIPT_RUN})

    else

      # Writes to the screen `I can't find the script.`.
      printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"

    fi

  else

    # Writes to the screen `I can't find the script.`.
    printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"
  
  fi

fi
