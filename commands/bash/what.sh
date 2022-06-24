#€ Qué es el comando.
#€ What is the command.

#€ Si hay 2 argumentos.
#€ Y
#€ No tiene como segundo argumento el texto `bash`.
# If there are 2 arguments.
# And.
# It does not have as a second argument the text `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_FOLDER}/commands/${2}/what.sh" ]]; then
    source ${LOOM_FOLDER}/commands/${2}/what.sh
  else
    #€ Qué es la aplicación indicada.
    # What is the application indicated.
    whatis ${2}
  fi

#€ Si tiene 3 argumentos.
#€ Y
#€ Tiene como segundo argumento el texto `npm`.
# If it has 3 arguments.
# AND
# Has the text `npm` as its second argument.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then
  #€ El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_FOLDER}/commands/npm/${3}/what.sh" ]]; then
    source ${LOOM_FOLDER}/commands/npm/${3}/what.sh
  else
    #€ Qué es la aplicación indicada.
    # What is the application indicated.
    echo -e "${3} (npm) \t     - $(npm view ${3} description)."
  fi

else
  #€ Qué es Bash.
  # Qué es Bash.
  echo -e "bash (es)            - GNU Bash es una interfaz de usuario de línea de comandos y un lenguaje de secuencias de comandos."
  echo -e "bash (en)            - GNU Bash is a command line user interface and scripting language."
  whatis bash
fi
