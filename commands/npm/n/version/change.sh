# Change Node.js version with `n`.

# Has 2 arguments.
if [ $# -eq 2 ]; then

  # Change Node.js with `n` to the indicated version.
  sudo npx -g n ${2}

else

  # Switch to the `lts` version of Node.js with `n`.
  sudo npx -g n lts

fi
