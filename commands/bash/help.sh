#€ Ayuda del comando.
# Command help.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `help` del comando existe.
  # The `help` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/help.sh" ]]; then

    #€ Ejecuta el script `help` del comando.
    # Execute the `help` script of the command.
    source ${LOOM_COMMANDS}/${2}/help.sh

  else

    #€ Ayuda del comando.
    # Command help.
    ${2} --help

  fi

else

  #€ Ayuda de Bash.
  # Bash help.
  bash --help

fi
