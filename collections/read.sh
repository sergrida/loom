# Command read.

# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # `READ_SEARCH` array. With the first argument cut off for every `.` it has.
  READ_SEARCH=(${1//./ })

  # Variable with the address of the LOOM application's `collections` folder.
  READ_SCRIPT_RUN=${LOOM_COLLECTIONS}

  # Run each element of the `LOOM_RUN` array.
  for (( I = 0; I < ${#READ_SEARCH[@]}; I ++ )); do

    # Executes for each element in the address.
    for X in ${READ_SCRIPT_RUN}/*; do

      # List the elements in the address.
      SCRIPT=${X//"${READ_SCRIPT_RUN}/"/}

      # If the file or folder has the abbreviation at the beginning.
      if [[ "$SCRIPT" == "${READ_SEARCH[$I]}"* ]]; then

        # Adds the element to the `SEARCH` array.
        READ_SCRIPT_RUN=${READ_SCRIPT_RUN}/${SCRIPT}
        vim -m $READ_SCRIPT_RUN

        # Stop the loop.
        break

      fi

    done

  done

fi
