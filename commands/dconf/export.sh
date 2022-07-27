# Exporta configuración de GNOME.

# Tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # Indicando el nombre del archivo.
  dconf dump / > ${2}

else

  # En la carpeta por defecto.
  dconf dump / > ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
