#!/bin/bash

# Variables de LOOM.
LOOM_VERSION=1.58.0;
LOOM_COMMANDS="${LOOM_FOLDER}/commands";

# Si existe el archivo `.env`.
if [ -f ${LOOM_FOLDER}/.env ]; then

  # Lee las variables del archivo `.env`.
  source ${LOOM_FOLDER}/.env;

else

  # Lee las variables del archivo `default.env`.
  source ${LOOM_FOLDER}/default.env;

fi;

# Matriz `SEARCH`. Con el primer argumento, cortado por cada `.` que tenga.
SEARCH=(${1//./ });

# Variable con la dirección de la carpeta `commands` de la aplicación LOOM.
SCRIPT_RUN=${LOOM_COMMANDS};

# Ejecuta cada elemento de la matriz `SEARCH`.
for (( I = 0; I < ${#SEARCH[@]}; I ++ )); do

  # Ejecuta cada elemento en la dirección.
  for X in ${SCRIPT_RUN}/*; do

    # Lista los elementos en la dirección.
    SCRIPT=${X//"${SCRIPT_RUN}/"/};

    # Si el archivo o carpeta tiene la abreviatura al principio.
    if [[ "$SCRIPT" == "${SEARCH[$I]}"* ]]; then

      # Agrega el elemento a la variable.
      SCRIPT_RUN=${SCRIPT_RUN}/${SCRIPT};

      # Para el bucle.
      break;

    fi;

  done;

done;

# Elimina variables no requeridas.
unset SEARCH, SCRIPT;

# Si el archivo de la dirección existe.
if [ -f ${SCRIPT_RUN} ]; then

  # Ejecuta el script.
  source ${SCRIPT_RUN};

else

  # Escribe en pantalla `LOOM no encuentra el script`.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n";

fi;
