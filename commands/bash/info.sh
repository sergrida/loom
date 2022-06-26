#€ Información del comando.
# Command information.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ Información del comando.
  # Command information.
  info ${2}

else

  #€ Información de Bash.
  # Bash information.
  info bash

fi
