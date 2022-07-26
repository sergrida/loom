# Exporta configuración de GNOME.
# Import GNOME configuration.

# Tiene 2 argumentos.
# Has 2 arguments.
if [ $# -eq 2 ]; then

  # Importa configuración de GNOME.
  # Import GNOME configuration.
  dconf load / < ${2}

else

  # En la carpeta por defecto.
  # In the default folder.
  dconf load / < ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
