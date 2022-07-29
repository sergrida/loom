# Cambia la version de Node.js con `n`.
# Change Node.js version with `n`.

# Tiene 2 argumentos.
# Has 2 arguments.
if [ $# -eq 2 ]; then

  # Cambia Node.js con `n` a la version indicada.
  # Change Node.js with `n` to the indicated version.
  sudo npx -g n ${2}

else

  # Cambia a la version `lts` de Node.js con `n`.
  # Switch to the `lts` version of Node.js with `n`.
  sudo npx -g n lts

fi
