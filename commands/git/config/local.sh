#€ Configura el usuario de Git de forma local.
# Configure the Git user locally.

#€ Tiene 3 argumentos.
# Has 3 arguments.
if [ $# -eq 3 ]; then

  #€ Configura el usuario de Git de forma local, con los argumentos recibidos.
  # Configure the Git user locally, with the arguments receive
  (cd ${PWD} && git config --local user.name "\"${2}\"")
  (cd ${PWD} && git config --local user.email ${3})

else

  #€ Configura el usuario de Git de forma local, con las variables de LOOM.
  # Configure the Git user locally, with LOOM variables.
  (cd ${PWD} && git config --local user.name "\"${LOOM_MYUSER}\"")
  (cd ${PWD} && git config --local user.email ${LOOM_EMAIL})

fi
