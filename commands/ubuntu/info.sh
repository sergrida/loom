#€ Lectura de información de la aplicación.
# Reading the application information.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Muestra en pantalla la información de la aplicación indicada.
  # Shows the application information indicated on the screen.
  info $2
else
  #€ Escribe en pantalla que el script requiere de un argumento.
  # Writes to the screen that the script requires an argument.
  printf "\033[0;31mLOOM: I need the name of the application.\033[0m\n"
fi
