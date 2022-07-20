#@es Qué es el comando.
#@en What is the command.

#@es Si tiene 2 argumentos y el argumento 2 no es `bash`.
#@en If it has 2 arguments and argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #@es El archivo `what` del comando existe.
  #@en The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/what.sh" ]]; then

    #@es Ejecuta el script `what` del comando.
    #@en Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/${2}/what.sh

  else

    #@es Qué es la aplicación indicada.
    #@en What is the application indicated.
    whatis ${2}

  fi

#@es Si tiene 3 argumentos y el argumento 2 es `npm`.
#@en If it has 3 arguments and argument 2 is `npm`.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then

  #@es El archivo `what` del comando existe.
  #@en The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/npm/${3}/what.sh" ]]; then

    #@es Ejecuta el script `what` del comando.
    #@en Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/npm/${3}/what.sh

  else

    #@es Qué es la aplicación indicada.
    #@en What is the application indicated.
    echo -e "${3} (npm) \t     - $(npm view ${3} description)."

  fi

else

  #@es Qué es Bash.
  #@en What is Bash.
  echo -e "bash (es)            - GNU Bash es una interfaz de usuario de línea de comandos y un lenguaje de secuencias de comandos."
  echo -e "bash (en)            - GNU Bash is a command line user interface and scripting language."
  whatis bash

fi
