# Qué es el comando.
# What is the command.

# Si tiene 2 argumentos.
# If it has 2 arguments.
if [ $# -eq 2 ]; then

  # El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    # Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/${2}/what.sh

  else

    # Qué es la aplicación indicada.
    # What is the application indicated.
    whatis ${2}

  fi

# Si tiene 3 argumentos y el argumento 2 es `npm`.
# If it has 3 arguments and argument 2 is `npm`.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then

  # El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/npm/${3}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    # Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/npm/${3}/what.sh

  else

    # Qué es la aplicación indicada.
    # What is the application indicated.
    echo -e "${3} (npm) \t     - $(npm view ${3} description)."

  fi

# Si tiene 4 argumentos y el segundo es `code` y el tercero `extensions`.
# If it has 4 argumentsand the second is `code` and the third is `extensions`.
elif [ $# -eq 4 ] && [ ${2} == "code" ] && [ ${3} == "extensions" ]; then

  # El archivo `what` del comando existe.
  # The `what` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/code/extensions/${4}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    # Execute the `what` script of the command.
    source ${LOOM_COMMANDS}/code/extensions/${4}/what.sh

  fi

fi
