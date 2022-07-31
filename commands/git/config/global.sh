# Configure the Git user globally.

# Has 3 arguments.
if [ $# -eq 3 ]; then

  # Configure the Git user globally, with the arguments received.
  git config --global user.name "\"${2}\""
  git config --global user.email ${3}

# Has no arguments.
elif [ $# -eq 1 ]; then

  # Configure the Git user globally, with LOOM variables.
  git config --global user.name "\"${LOOM_MYUSER}\""
  git config --global user.email ${LOOM_EMAIL}

fi
