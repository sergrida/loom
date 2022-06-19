#! Si existe el archivo `.env`.
# If the `.env` file exists.
if [ -f ${LOOM_FOLDER}/.env ]; then
  #! Lee las variables del archivo `.env`.
  # Read variables from `.env` file.
  source .env
else
  #! Lee las variables del archivo `default.env`.
  # Read variables from `default.env` file.
  source default.env
fi

#! Crea la matriz `RUN`.
#! Con el texto del primer argumento cortado por cada uno de los `.` que tenga.
# Create the `RUN` array.
# With the text of the first argument cut off for every `.` it has.
RUN=(${1//./ })

#! Crea la variable de la dirección del script a ejecutar.
#! Con la dirección de la carpeta `commands` de la aplicación LOOM y el primer texto de la matriz `RUN`.
# Create the variable of the address of the script to execute.
# With the address of the LOOM application's `commands` folder and the first text of the `RUN` array.
RUN_FOLDER=${LOOM_FOLDER}/commands/${RUN[0]}

#! Se ejecuta para elemento de la matriz `RUN`, sin contar el primero.
#! It is executed for each element of the `RUN` array, not counting the first.
for (( I = 1; I < ${#RUN[@]}; I ++ )); do
  #! Agrega el elemento de la matriz `RUN` a la dirección del script que se ejecutará.
  # Adds the element of the `RUN` array to the address of the script to run.
  RUN_FOLDER=${RUN_FOLDER}/${RUN[${I}]}
done

#! Agrega a la dirección de script a ejecutar la extension `sh`.
# Add to the address of the script to execute the extension `sh`.
RUN_FOLDER=${RUN_FOLDER}.sh

#! Si el archivo de la dirección del script a ejecutar existe.
# If the file exists at the address of the script to execute.
if [ -f ${RUN_FOLDER} ]; then
  #! Ejecuta el script.
  # Run the script.
  source ${RUN_FOLDER}
else
  #! Escribe en pantalla que LOOM no encuentra el script indicado.
  # It writes to the screen that LOOM cannot find the indicated script.
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"
fi
