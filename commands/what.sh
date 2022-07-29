# Qué es el comando.

# Si tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # El archivo `what` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    source ${LOOM_COMMANDS}/${2}/what.sh

  else

    # Qué es la aplicación indicada.
    whatis ${2}

  fi

# Si tiene 3 argumentos y el argumento 2 es `npm`.
elif [ $# -eq 3 ] && [ ${2} == "npm" ]; then

  # El archivo `what` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/npm/${3}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    source ${LOOM_COMMANDS}/npm/${3}/what.sh

  else

    # Qué es la aplicación indicada.
    echo -e "${3} (npm) \t     - $(npm view ${3} description)."

  fi

# Si tiene 4 argumentos y el segundo es `code` y el tercero `extensions`.
elif [ $# -eq 4 ] && [ ${2} == "code" ] && [ ${3} == "extensions" ]; then

  # El archivo `what` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/code/extensions/${4}/what.sh" ]]; then

    # Ejecuta el script `what` del comando.
    source ${LOOM_COMMANDS}/code/extensions/${4}/what.sh

  fi

fi
