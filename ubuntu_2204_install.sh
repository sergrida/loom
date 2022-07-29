#!/bin/bash

# Configura el sistema para que LOOM funcione en Ubuntu 22.04.

# Actualiza el sistema operativo Ubuntu.
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt clean
sudo apt autoremove -y

# No existe el texto `LOOM` en el archivo `.bashrc`.
if ! grep -q LOOM ~/.bashrc; then

  # Escribe una línea vacía en el archivo `.bashrc`.
  echo "" >> ~/.bashrc

  # Escribe un comentario en el archivo `.bashrc`.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc

  # Escribe una variable global con la dirección de LOOM, en el archivo `.bashrc`.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc

  # Escribe la dirección del archivo `.bashrc` para leer y ejecutar su contenido.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc

  # Copia el archivo `default.env` con el nombre `.env`, utiliza el nuevo archivo para ingresar tu configuración personal.
  cp ${PWD}/default.env ${PWD}/.env

fi
