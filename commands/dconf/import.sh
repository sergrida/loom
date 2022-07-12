#€ Importa configuración de GNOME.
# Import GNOME configuration.

#€ Tiene 2 argumentos.
# Has 2 arguments.
if [ $# -eq 2 ]; then

  #€ Indica la dirección del archivo.
  # Indicates the file address.
  dconf load / < ${2}

else

  #€ En la carpeta por defecto.
  # In the default folder.
  dconf load / < ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
