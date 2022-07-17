# Configura el usuario de Git de forma global.

# Tiene 3 argumentos.
if [ $# -eq 3 ]; then

  # Configura el usuario de Git de forma global, con los argumentos recibidos.
  git config --global user.name "\"${2}\"";
  git config --global user.email ${3};

# No tiene argumentos.
elif [ $# -eq 1 ]; then

  # Configura el usuario de Git de forma global, con las variables de LOOM.
  git config --global user.name "\"${LOOM_MYUSER}\"";
  git config --global user.email ${LOOM_EMAIL};

fi;
