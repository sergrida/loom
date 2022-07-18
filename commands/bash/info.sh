#@es Información del comando.
#@en Command information.

#@es Si tiene 2 argumentos y el argumento 2 no es `bash`.
#@en If it has 2 arguments and argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #@es El archivo `info` del comando existe.
  #@en The `info` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    #@es Ejecuta el script `info` del comando.
    #@en Execute the `info` script of the command.
    source ${LOOM_COMMANDS}/${2}/info.sh;

  else

    #@es Información del comando.
    #@en Command information.
    info ${2};

  fi;

else

  #@es Información de Bash.
  #@en Bash information.
  info bash;

fi;
