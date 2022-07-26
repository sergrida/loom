# Dónde está el comando.
# Where is the command.

# Si tiene 2 argumentos.
# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # El archivo `where` del comando existe.
  # The command `where` file exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    # Ejecuta el script `where` del comando.
    # Execute the `where` script of the command.
    source ${LOOM_COMMANDS}/${2}/where.sh

  else

    # Dónde está la aplicación indicada.
    # Where is the application indicated.
    which ${2}

  fi

fi
