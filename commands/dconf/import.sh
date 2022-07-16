# Importa configuración de GNOME.

# Tiene 2 argumentos.
if [ $# -eq 2 ]; then

  # Indica la dirección del archivo.
  dconf load / < ${2};

else

  # En la carpeta por defecto.
  dconf load / < ${LOOM_FOLDER}/temp/dconf-settings.ini;

fi
