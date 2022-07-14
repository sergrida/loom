#€ Qué es el comando.
# What is the command.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/what.sh" ]]; then

    #€ Ejecuta el script `what` del comando.
    # Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/${2}/what.sh

  else

    #€ Qué es la aplicación indicada.
    # What is the application indicated.
    whatis ${2}

  fi

#€ Tiene 3 argumentos.
#€ Y.
#€ El argumento 2 es `npm`.
# Has 3 arguments.
# And.
# Argument 2 is `npm`.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then

  #€ El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/npm/${3}/what.sh" ]]; then

    #€ Ejecuta el script `what` del comando.
    # Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/npm/${3}/what.sh

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
