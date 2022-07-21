#@es Cambia la version de Node.js con `n`.
#@en Change Node.js version with `n`.

#@es Tiene 2 argumentos.
#@en Has 2 arguments.
if [ $# -eq 2 ]; then

  #@es Cambia Node.js con `n` a la version indicada.
  #@en Change Node.js with `n` to the indicated version.
  sudo npx -g n ${2}

else

  #@es Cambia a la version `lts` de Node.js con `n`.
  #@en Switch to the `lts` version of Node.js with `n`.
  sudo npx -g n lts

fi
