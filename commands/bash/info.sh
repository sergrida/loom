# Información del comando.

# Tiene 2 argumentos.
# Y.
# El argumento 2 no es `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  # El archivo `info` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/info.sh" ]]; then

    # Ejecuta el script `info` del comando.
    source ${LOOM_COMMANDS}/${2}/info.sh;

  else

    # Información del comando.
    info ${2};

  fi

else

  # Información de Bash.
  info bash;

fi
