#@es Versión del comando.
#@en Command version.

#@es Si tiene 2 argumentos y el argumento 2 no es `bash`.
#@en If it has 2 arguments and argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #@es El archivo `version` del comando existe.
  #@en The `version` file of the command exists.
  if [[ -f "${LOOM_COMMANDS}/${2}/version.sh" ]]; then

    #@es Ejecuta el script `version` del comando.
    #@en Execute the `version` script of the command.
    source ${LOOM_COMMANDS}/${2}/version.sh;

  else

    #@es Versión del comando indicado.
    #@en Version of the indicated command.
    ${2} --version;

  fi;

else

  # Versión de Bash.
  bash --version;

fi;
