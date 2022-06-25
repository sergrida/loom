#€ Nueva carpeta.
# New folder.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Nueva carpeta.
  # New folder.
  mkdir ${PWD}/${2}
else
  #€ Escribe en pantalla que LOOM necesita el nombre de la carpeta.
  # Writes to the screen that LOOM needs the name of the folder.
  printf "\033[0;31mLOOM: I don't know the name of the folder.\033[0m\n"
fi
