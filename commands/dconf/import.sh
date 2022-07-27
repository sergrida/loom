# Exporta configuración de GNOME.

# Tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # Importa configuración de GNOME.
  dconf load / < ${2}

else

  # En la carpeta por defecto.
  dconf load / < ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
