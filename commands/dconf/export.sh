# Export GNOME configuration.

# It has 2 arguments.
if [ $# -eq 2 ]; then

  # Indicating the name of the file.
  dconf dump / > ${2}

else

  # In the default folder.
  dconf dump / > ${LOOM_FOLDER}/temp/dconf-settings.ini

fi
