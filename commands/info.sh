# Información del comando.
# Command information.

# Si tiene 2 argumentos.
# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # El archivo `info` del comando existe.
  # The `info` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    # Ejecuta el script `info` del comando.
    # Execute the `info` script of the command.
    source ${LOOM_COMMANDS}/${2}/info.sh

  else

    # Información del comando.
    # Command information.
    info ${2}

  fi

fi
