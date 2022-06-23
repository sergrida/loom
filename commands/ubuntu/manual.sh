#€ Lectura del manual de la aplicación.
# Reading the application manual.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Muestra en pantalla el manual de la aplicación indicada.
  # It shows on the screen the manual of the indicated application.
  man $2
else
  #€ Escribe en pantalla que el script requiere de un argumento.
  # Writes to the screen that the script requires an argument.
  printf "\033[0;31mLOOM: I need the name of the application.\033[0m\n"
fi
