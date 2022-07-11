#€ Configura el usuario de Git de forma global.
# Configure the Git user globally.

#€ Tiene 3 argumentos.
# Has 3 arguments.
if [ $# -eq 3 ]; then

  #€ Configura el usuario de Git de forma global, con los argumentos recibidos.
  # Configure the Git user globally, with the arguments received.
  git config --global user.name "\"${2}\""
  git config --global user.email ${3}

#€ No tiene argumentos.
# Has no arguments.
elif [ $# -eq 1 ]; then

  #€ Configura el usuario de Git de forma global, con las variables de LOOM.
  # Configure the Git user globally, with LOOM variables.
  git config --global user.name "\"${LOOM_MYUSER}\""
  git config --global user.email ${LOOM_EMAIL}

fi
