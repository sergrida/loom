#€ Información del comando.
# Command information.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `info` del comando existe.
  # The `info` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    #€ Ejecuta el script `info` del comando.
    # Execute the `info` script of the command.
    source ${LOOM_COMMANDS}/${2}/info.sh

  else

    #€ Información del comando.
    # Command information.
    info ${2}

  fi

else

  #€ Información de Bash.
  # Bash information.
  info bash

fi
