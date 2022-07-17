# Configura el usuario de Git de forma local.

# Tiene 3 argumentos.
if [ $# -eq 3 ]; then

  # Configura el usuario de Git de forma local, con los argumentos recibidos.
  (cd ${PWD} && git config --local user.name "\"${2}\"");
  (cd ${PWD} && git config --local user.email ${3});

else

  # Configura el usuario de Git de forma local, con las variables de LOOM.
  (cd ${PWD} && git config --local user.name "\"${LOOM_MYUSER}\"");
  (cd ${PWD} && git config --local user.email ${LOOM_EMAIL});

fi;
