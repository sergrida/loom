# Dónde está el comando.

# Tiene 2 argumentos.
# Y.
# El argumento 2 no es `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  # El archivo `where` del comando existe.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    # Ejecuta el script `where` del comando.
    source ${LOOM_COMMANDS}/${2}/where.sh;

  else

    # Dónde está la aplicación indicada.
    which ${2};

  fi;

else

  # Dónde está Bash.
  which bash;

fi;
