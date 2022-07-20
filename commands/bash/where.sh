#@es Dónde está el comando.
#@en Where is the command.

#@es Si tiene 2 argumentos y el argumento 2 no es `bash`.
#@en If it has 2 arguments and argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #@es El archivo `where` del comando existe.
  #@en The command `where` file exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    #@es Ejecuta el script `where` del comando.
    #@en Execute the `where` script of the command.
    source ${LOOM_COMMANDS}/${2}/where.sh

  else

    #@es Dónde está la aplicación indicada.
    #@en Where is the application indicated.
    which ${2}

  fi

else

  #@es Dónde está Bash.
  #@en Where is Bash.
  which bash

fi
