# Dónde está el comando.

# Si tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # El archivo `where` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    # Ejecuta el script `where` del comando.
    source ${LOOM_COMMANDS}/${2}/where.sh

  else

    # Dónde está la aplicación indicada.
    which ${2}

  fi

fi
