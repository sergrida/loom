# Ayuda del comando.

# Tiene 2 argumentos.
# Y.
# El argumento 2 no es `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  # El archivo `help` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/help.sh" ]]; then

    # Ejecuta el script `help` del comando.
    source ${LOOM_COMMANDS}/${2}/help.sh;

  else

    # Ayuda del comando.
    ${2} --help;

  fi

else

  # Ayuda de Bash.
  bash --help;

fi
