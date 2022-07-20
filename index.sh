#!/bin/bash

#@es Variables de LOOM.
#@en LOOM variables.
LOOM_VERSION=1.58.0
LOOM_COMMANDS="${LOOM_FOLDER}/commands"

#@es Si existe el archivo `.env`.
#@en If the `.env` file exists.
if [ -f ${LOOM_FOLDER}/.env ]; then

  #@es Lee las variables del archivo `.env`.
  #@en Read variables from `.env` file.
  source ${LOOM_FOLDER}/.env

else

  #@es Lee las variables del archivo `default.env`.
  #@en Read variables from `default.env` file.
  source ${LOOM_FOLDER}/default.env

fi

#@es Matriz `LOOM_RUN`. Con el primer argumento, cortado por cada `.` que tenga.
#@en `LOOM_RUN` array. With the first argument, cut off for every `.` it has.
SEARCH=(${1//./ })

#@es Variable con la dirección de la carpeta `commands` de la aplicación LOOM.
#@en Variable with the address of the LOOM application's `commands` folder.
SCRIPT_RUN=${LOOM_COMMANDS}

#@es Ejecuta cada elemento de la matriz `LOOM_RUN`.
#@en Run each element of the `LOOM_RUN` array.
for (( I = 0; I < ${#SEARCH[@]}; I ++ )); do

  #@es Ejecuta por cada elemento en la dirección. 
  #@en Executes for each element in the address.
  for X in ${SCRIPT_RUN}/*; do

    #@es Lista los elementos en la dirección.
    #@en list the items or folders in the address.
    SCRIPT=${X//"${SCRIPT_RUN}/"/}

    #@es Si el archivo o carpeta tiene la abreviatura al principio.
    #@en If the file or folder has the abbreviation at the beginning.
    if [[ "$SCRIPT" == "${SEARCH[$I]}"* ]]; then

      #@es Agrega el elemento de la matriz `SEARCH`.
      #@en Adds the array element `SEARCH`.
      SCRIPT_RUN=${SCRIPT_RUN}/${SCRIPT}

      #@es Para el bucle.
      #@en Stops the loop.
      break

    fi

  done

done

#@es Elimina variables no requeridas.
#@en Remove unneeded variables.
unset SEARCH, SCRIPT

#@es Si el archivo de la dirección existe.
#@en If the address file exists.
if [ -f ${SCRIPT_RUN} ]; then

  #@es Ejecuta el script.
  #@en Run the script.
  source ${SCRIPT_RUN}

else

  #@es Escribe en pantalla `LOOM no encuentra el script`.
  #@en Write to the screen `LOOM can't find the script`.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"

fi
