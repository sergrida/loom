# Versión del comando.

# Tiene 2 argumentos.
# Y.
# El argumento 2 no es `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  # El archivo `version` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/version.sh" ]]; then

    # Ejecuta el script `version` del comando.
    source ${LOOM_COMMANDS}/${2}/version.sh;

  else

    # Versión del comando indicado.
    ${2} --version;

  fi

else

  # Versión de Bash.
  bash --version;

fi
