#€ Cambia la version de Node.js con `n`.
# Change Node.js version with `n`.

#€ Si hay 2 argumentos.
# If there are 2 arguments.
if [ $# -eq 2 ]; then
  #€ Cambia Node.js con `n` a la version indicada.
  # Change Node.js with `n` to the indicated version.
  sudo n ${2}
else
  #€ Cambia a la version `lts` de Node.js con `n`.
  # Switch to the `lts` version of Node.js with `n`.
  sudo n lts
fi
