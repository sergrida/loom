#@es Dónde está el comando.
#@en Where is the command.

#@es Si tiene 2 argumentos.
#@en If it has 2 arguments.
if [ $# -eq 2 ]; then

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

fi
