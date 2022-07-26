#!/bin/bash

# Configura el sistema para que LOOM funcione en Ubuntu 22.04.
# Configure the system for LOOM to work on Ubuntu 22.04.

# Actualiza el sistema operativo Ubuntu.
# Update the Ubuntu operating system.
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt clean
sudo apt autoremove -y

# No existe el texto `LOOM` en el archivo `.bashrc`.
# There is no `LOOM` text in the `.bashrc` file.
if ! grep -q LOOM ~/.bashrc; then

  # Escribe una línea vacía en el archivo `.bashrc`.
  # Write an empty line to the `.bashrc` file.
  echo "" >> ~/.bashrc

  # Escribe un comentario en el archivo `.bashrc`.
  # Write a comment to the `.bashrc` file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc

  # Escribe una variable global con la dirección de LOOM, en el archivo `.bashrc`.
  # Write a global variable with the address of LOOM to the `.bashrc` file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc

  # Escribe la dirección del archivo `.bashrc` para leer y ejecutar su contenido.
  # Write the address of the `.bashrc` file to read and execute its contents.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc

  # Copia el archivo `default.env` con el nombre `.env`, utiliza el nuevo archivo para ingresar tu configuración personal.
  # Copy the `default.env` file with the name `.env`, use the new file to enter your personal settings.
  cp ${PWD}/default.env ${PWD}/.env

fi
