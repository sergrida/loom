#€ Dónde está el comando.
#€ Where is the command.

#€ Tiene 2 argumentos.
#€ Y.
#€ El argumento 2 no es `bash`.
# Has 2 arguments.
# And.
# Argument 2 is not `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then

  #€ Dónde está la aplicación indicada.
  # Where is the application indicated.
  which ${2}

else

  #€ Dónde está Bash.
  # Where is Bash.
  which bash

fi
