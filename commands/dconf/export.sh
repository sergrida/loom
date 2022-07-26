# Exporta configuración de GNOME.
# Export GNOME configuration.

# Tiene 2 argumentos.
# Has 2 arguments.
if [ $# -eq 2 ]; then

  # Indicando el nombre del archivo.
  # Indicating the file name.
  dconf dump / > ${2}

else

  # En la carpeta por defecto.
  # In the default folder.
  dconf dump / > ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
