#@es Exporta configuración de GNOME.
#@en Export GNOME configuration.

#@es Tiene 2 argumentos.
#@en Has 2 arguments.
if [ $# -eq 2 ]; then

  #@es Indicando el nombre del archivo.
  #@en Indicating the file name.
  dconf dump / > ${2}

else

  #@es En la carpeta por defecto.
  #@en In the default folder.
  dconf dump / > ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
