#!/bin/bash

# Si existe el archivo `.env`.
if [ -f ${LOOM_FOLDER}/.env ]; then

  # Lee las variables del archivo `.env`.
  source ${LOOM_FOLDER}/.env

else

  # Lee las variables del archivo `default.env`.
  source ${LOOM_FOLDER}/default.env

fi

# Matriz `LOOM_RUN`. Con el primer argumento, cortado por cada `.` que tenga.
SEARCH=(${1//./ })

# Variable con la dirección de la carpeta `commands` de la aplicación LOOM.
SCRIPT_RUN=${LOOM_COMMANDS}

# Ejecuta cada elemento de la matriz `LOOM_RUN`.
for (( I = 0; I < ${#SEARCH[@]}; I ++ )); do

  # Ejecuta por cada elemento en la dirección. 
  for X in ${SCRIPT_RUN}/*; do

    # Lista los elementos en la dirección.
    SCRIPT=${X//"${SCRIPT_RUN}/"/}

    # Si el archivo o carpeta tiene la abreviatura al principio.
    if [[ "$SCRIPT" == "${SEARCH[$I]}"* ]]; then

      # Agrega el elemento de la matriz `SEARCH`.
      SCRIPT_RUN=${SCRIPT_RUN}/${SCRIPT}

      # Para el bucle.
      break

    fi

  done

done

# Elimina variables no requeridas.
unset SEARCH, SCRIPT

# Si el archivo de la dirección existe.
if [ -f ${SCRIPT_RUN} ]; then

  # Si el script tiene la extensión `js`.
  if [[ "$SCRIPT_RUN" == *".js" ]]; then

    # Ejecuta el script con Node.js.
    node ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `py`.
  elif [[ "$SCRIPT_RUN" == *".py" ]]; then

    # Ejecuta el script con Python.
    python3 ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `pl`.
  elif [[ "$SCRIPT_RUN" == *".pl" ]]; then

    # Ejecuta el script con Perl.
    perl ${SCRIPT_RUN} "$@"

  # Si el script tiene la extensión `sh`.
  elif [[ "$SCRIPT_RUN" == *".sh" ]]; then

    # Ejecuta el script con Bash.
    source ${SCRIPT_RUN} "$@"

  else

    # Ejecuta el programa.
    ${SCRIPT_RUN} "$@"

  fi

else

  # Escribe en pantalla `LOOM no encuentra el script`.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"

fi
