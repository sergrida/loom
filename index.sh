#!/bin/bash

#€ Si existe el archivo `.env`.
# If the `.env` file exists.
if [ -f ${LOOM_FOLDER}/.env ]; then
  #€ Lee las variables del archivo `.env`.
  # Read variables from `.env` file.
  source ${LOOM_FOLDER}/.env
else
  #€ Lee las variables del archivo `default.env`.
  # Read variables from `default.env` file.
  source ${LOOM_FOLDER}/default.env
fi

#€ Crea la matriz `RUN`.
#€ Con el texto del primer argumento cortado por cada uno de los `.` que tenga.
# Create the `RUN` array.
# With the text of the first argument cut off for every `.` it has.
RUN=(${1//./ })

#€ Crea la variable de la dirección del script a ejecutar.
#€ Con la dirección de la carpeta `commands` de la aplicación LOOM.
# Create the variable of the address of the script to execute.
# With the address of the LOOM application's `commands` folder.
RUN_FOLDER=${LOOM_FOLDER}/commands

#€ Se ejecuta para cada elemento de la matriz `RUN`.
# It is executed for each element of the `RUN` array.
for (( I = 0; I < ${#RUN[@]}; I ++ )); do

  #€ Se ejecuta por cada elemento en la dirección.
  # It is executed for each element of the address.
  for F in ${RUN_FOLDER}/*; do
    #€ Lista los elementos en la dirección.
    # list the items or folders in the address.
    STR=${F//"${RUN_FOLDER}/"/}

    #€ Si el archivo o carpeta tiene la abreviatura al principio.
    # If the file or folder has the abbreviation at the beginning.
    if [[ "$STR" == "${RUN[$I]}"* ]]; then
      #€ Agrega el elemento de la matriz `RUN` a la dirección del script que se ejecutará.
      # Adds the element of the `RUN` array to the address of the script to run.
      RUN_FOLDER=${RUN_FOLDER}/${STR}
      #€ Para el bucle.
      # Stops the loop.
      break
    fi
  done

done

#€ Si el archivo de la dirección del script a ejecutar existe.
# If the file exists at the address of the script to execute.
if [ -f ${RUN_FOLDER} ]; then
  #€ Ejecuta el script.
  # Run the script.
  source ${RUN_FOLDER}
else
  #€ Escribe en pantalla que LOOM no encuentra el script indicado.
  # It writes to the screen that LOOM cannot find the indicated script.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"
fi
