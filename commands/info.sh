#@es Información del comando.
#@en Command information.

#@es Si tiene 2 argumentos.
#@en If it has 2 arguments.
if [ $# -eq 2 ]; then

  #@es El archivo `info` del comando existe.
  #@en The `info` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    #@es Ejecuta el script `info` del comando.
    #@en Execute the `info` script of the command.
    source ${LOOM_COMMANDS}/${2}/info.sh

  else

    #@es Información del comando.
    #@en Command information.
    info ${2}

  fi

fi
