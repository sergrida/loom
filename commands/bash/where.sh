#€ Dónde está el comando.
#€ Where is the command.

#€ Si hay 2 argumentos.
#€ Y
#€ No tiene como segundo argumento el texto `bash`.
# If there are 2 arguments.
# And.
# It does not have as a second argument the text `bash`.
if [ $# -eq 2 ] && [ ${2} != "bash" ]; then
  #€ Dónde está la aplicación indicada.
  # Where is the application indicated.
  which ${2}
else
  #€ Dónde está Bash.
  # Where is Bash.
  which bash
fi
