#@es Ayuda del comando.
#@en Command help.

#@es Si tiene 2 argumentos y el argumento 2 no es `bash`.
#@en If it has 2 arguments and argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #@es El archivo `help` del comando existe.
  #@en The `help` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/help.sh" ]]; then

    #@es Ejecuta el script `help` del comando.
    #@en Execute the `help` script of the command.
    source ${LOOM_COMMANDS}/${2}/help.sh

  else

    #@es Ayuda del comando.
    #@en Command help.
    ${2} --help

  fi

else

  #@es Ayuda de Bash.
  #@en Bash help.
  bash --help

fi
