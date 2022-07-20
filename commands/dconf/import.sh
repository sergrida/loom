#@es Exporta configuración de GNOME.
#@en Import GNOME configuration.

#@es Tiene 2 argumentos.
#@en Has 2 arguments.
if [ $# -eq 2 ]; then

  #@es Importa configuración de GNOME.
  #@en Import GNOME configuration.
  dconf load / < ${2}

else

  #@es En la carpeta por defecto.
  #@en In the default folder.
  dconf load / < ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
