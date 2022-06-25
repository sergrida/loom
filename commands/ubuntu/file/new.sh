#€ Nuevo archivo.
# New file.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Nuevo archivo.
  # New file.
  touch ${PWD}/${2}
else
  #€ Escribe en pantalla que LOOM necesita el nombre del archivo.
  # Writes to the screen that LOOM needs the name of the file.
  printf "\033[0;31mLOOM: I don't know the name of the file.\033[0m\n"
fi
