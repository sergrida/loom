#€ Dónde está el comando.
# Where is the command.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `where` del comando existe.
  # The `where` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/where.sh" ]]; then

    #€ Ejecuta el script `where` del comando.
    # Execute the `where` script of the command.
    source ${LOOM_COMMANDS}/${2}/where.sh

  else

    #€ Dónde está la aplicación indicada.
    # Where is the application indicated.
    which ${2}

  fi

else

  #€ Dónde está Bash.
  # Where is Bash.
  which bash

fi
