#!/bin/bash

# Si existe el archivo `.env`.
# If the `.env` file exists.
if [ -f ${LOOM_FOLDER}/.env ]; then

  # Lee las variables del archivo `.env`.
  # Read variables from `.env` file.
  source ${LOOM_FOLDER}/.env

else

  # Lee las variables del archivo `default.env`.
  # Read variables from `default.env` file.
  source ${LOOM_FOLDER}/default.env

fi

# Matriz `LOOM_RUN`. Con el primer argumento, cortado por cada `.` que tenga.
# `LOOM_RUN` array. With the first argument, cut off for every `.` it has.
SEARCH=(${1//./ })

# Variable con la dirección de la carpeta `commands` de la aplicación LOOM.
# Variable with the address of the LOOM application's `commands` folder.
SCRIPT_RUN=${LOOM_COMMANDS}

# Ejecuta cada elemento de la matriz `LOOM_RUN`.
# Run each element of the `LOOM_RUN` array.
for (( I = 0; I < ${#SEARCH[@]}; I ++ )); do

  # Ejecuta por cada elemento en la dirección. 
  # Executes for each element in the address.
  for X in ${SCRIPT_RUN}/*; do

    # Lista los elementos en la dirección.
    # list the items or folders in the address.
    SCRIPT=${X//"${SCRIPT_RUN}/"/}

    # Si el archivo o carpeta tiene la abreviatura al principio.
    # If the file or folder has the abbreviation at the beginning.
    if [[ "$SCRIPT" == "${SEARCH[$I]}"* ]]; then

      # Agrega el elemento de la matriz `SEARCH`.
      # Adds the array element `SEARCH`.
      SCRIPT_RUN=${SCRIPT_RUN}/${SCRIPT}

      # Para el bucle.
      # Stops the loop.
      break

    fi

  done

done

# Elimina variables no requeridas.
# Remove unneeded variables.
unset SEARCH, SCRIPT

# Si el archivo de la dirección existe.
# If the address file exists.
if [ -f ${SCRIPT_RUN} ]; then

  # Si el script tiene la extensión `js`.
  # If the script has the extension `js`.
  if [[ "$SCRIPT_RUN" == *".js" ]]; then

    # Ejecuta el script con Node.js.
    # Run the script with Node.js.
    node ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `py`.
  # If the script has the extension `py`.
  elif [[ "$SCRIPT_RUN" == *".py" ]]; then

    # Ejecuta el script con Python.
    # Run the script with Python.
    python3 ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `pl`.
  # If the script has the extension `pl`.
  elif [[ "$SCRIPT_RUN" == *".pl" ]]; then

    # Ejecuta el script con Perl.
    # Run the script with Perl.
    perl ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `sh`.
  # If the script has the extension `sh`.
  elif [[ "$SCRIPT_RUN" == *".sh" ]]; then

    # Ejecuta el script con Bash.
    # Run the script with Bash.
    source ${SCRIPT_RUN} "$@"

  else

    # Ejecuta el programa.
    # Run the program.
    ${SCRIPT_RUN} "$@"

  fi

else

  # Escribe en pantalla `LOOM no encuentra el script`.
  # Write to the screen `LOOM can't find the script`.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"

fi
