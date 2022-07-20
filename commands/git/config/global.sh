#@es Configura el usuario de Git de forma global.
#@en Configure the Git user globally.

#@es Tiene 3 argumentos.
#@en Has 3 arguments.
if [ $# -eq 3 ]; then

  #@es Configura el usuario de Git de forma global, con los argumentos recibidos.
  #@en Configure the Git user globally, with the arguments received.
  git config --global user.name "\"${2}\""
  git config --global user.email ${3}

#@es No tiene argumentos.
#@en Has no arguments.
elif [ $# -eq 1 ]; then

  #@es Configura el usuario de Git de forma global, con las variables de LOOM.
  #@en Configure the Git user globally, with LOOM variables.
  git config --global user.name "\"${LOOM_MYUSER}\""
  git config --global user.email ${LOOM_EMAIL}

fi
