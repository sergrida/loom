# Command EDIT.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # `EDIT_SEARCH` array. With the first argument cut off for every `.` it has.
  EDIT_SEARCH=(${1//./ })

  # Variable with the address of the LOOM application's `collections` folder.
  EDIT_SCRIPT_RUN=${LOOM_COLLECTIONS}

  # Run each element of the `LOOM_RUN` array.
  for (( I = 0; I < ${#EDIT_SEARCH[@]}; I ++ )); do

    # Executes for each element in the address.
    for X in ${EDIT_SCRIPT_RUN}/*; do

      # List the elements in the address.
      SCRIPT=${X//"${EDIT_SCRIPT_RUN}/"/}

      # If the file or folder has the abbreviation at the beginning.
      if [[ "$SCRIPT" == "${EDIT_SEARCH[$I]}"* ]]; then

        # Adds the element to the `SEARCH` array.
        EDIT_SCRIPT_RUN=${EDIT_SCRIPT_RUN}/${SCRIPT}
        vim $EDIT_SCRIPT_RUN

        # Stop the loop.
        break

      fi

    done

  done

fi
