#@es Configura el usuario de Git de forma local.
#@en Configure the Git user locally.

#@es Tiene 3 argumentos.
#@en Has 3 arguments.
if [ $# -eq 3 ]; then

  #@es Configura el usuario de Git de forma local, con los argumentos recibidos.
  #@en Configure the Git user locally, with the arguments receive.
  (cd ${PWD} && git config --local user.name "\"${2}\"");
  (cd ${PWD} && git config --local user.email ${3});

else

  #@es Configura el usuario de Git de forma local, con las variables de LOOM.
  #@en Configure the Git user locally, with LOOM variables.
  (cd ${PWD} && git config --local user.name "\"${LOOM_MYUSER}\"");
  (cd ${PWD} && git config --local user.email ${LOOM_EMAIL});

fi;
