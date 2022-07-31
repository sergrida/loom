# Configure the Git user locally.

# Has 3 arguments.
if [ $# -eq 3 ]; then

  # Configure the Git user locally, with the arguments receive.
  (cd ${PWD} && git config --local user.name "\"${2}\"")
  (cd ${PWD} && git config --local user.email ${3})

else

  # Configure the Git user locally, with LOOM variables.
  (cd ${PWD} && git config --local user.name "\"${LOOM_MYUSER}\"")
  (cd ${PWD} && git config --local user.email ${LOOM_EMAIL})

fi
