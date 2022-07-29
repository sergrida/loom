# Información del comando.

# Si tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # El archivo `info` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    # Ejecuta el script `info` del comando.
    source ${LOOM_COMMANDS}/${2}/info.sh

  else

    # Información del comando.
    info ${2}

  fi

fi
