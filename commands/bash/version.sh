#€ Versión del comando.
# Command version.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ El archivo `version` del comando existe.
  # The `version` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/version.sh" ]]; then

    #€ Ejecuta el script `version` del comando.
    # Execute the `version` script of the command.
    source ${LOOM_COMMANDS}/${2}/version.sh

  else

    #€ Versión del comando indicado.
    # Version of the indicated command.
    ${2} --version

  fi

else

  #€ Versión de Bash.
  # Bash version.
  bash --version

fi
