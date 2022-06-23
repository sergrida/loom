#€ Donde esta la aplicación.
# Where is the application.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Indica dónde se encuentra la aplicación indicada.
  # Indicates where the indicated application is located.
  which $2
else
  #€ Escribe en pantalla que el script requiere de un argumento.
  # Writes to the screen that the script requires an argument.
  printf "\033[0;31mLOOM: I need the name of the application.\033[0m\n"
fi
