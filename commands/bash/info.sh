#€ Información del comando.
# Command information.

#€ Si hay 2 argumentos.
#€ Y
#€ No tiene como segundo argumento el texto `bash`.
# If there are 2 arguments.
# And.
# It does not have as a second argument the text `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then
  #€ Información del comando.
  # Command information.
  info ${2}
else
  #€ Información de Bash.
  # Bash information.
  info bash
fi
