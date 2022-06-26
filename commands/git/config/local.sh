#€ Configura el usuario de Git de forma local.
# Configure the Git user locally.

#€ Tiene 3 argumentos.
# Has 3 arguments.
if [ $# -eq 3 ]; then

  #€ Configura el usuario de Git de forma local.
  # Configure the Git user locally.
  git config --local user.name "\"${LOOM_MYUSER}\""
  git config --local user.email ${LOOM_EMAIL}

else

  #€ Configura el usuario de Git de forma global.
  # Configure the Git user globally.
  git config --global user.name "\"${LOOM_MYUSER}\""
  git config --global user.email ${LOOM_EMAIL}

fi
