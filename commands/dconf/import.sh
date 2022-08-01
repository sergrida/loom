# Export GNOME configuration.

# It has 2 arguments.
if [ $# -eq 2 ]; then

  # Import GNOME configuration.
  dconf load / < ${2}

else

  # In the default folder.
  dconf load / < ${LOOM_FOLDER}/temp/dconf_settings.ini

fi
