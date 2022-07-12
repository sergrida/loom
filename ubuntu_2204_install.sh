#!/bin/bash

#€ Instala los requisitos necesarios para que LOOM funcione en el sistema operativo Ubuntu 22.04.
# Installs the necessary requirements for LOOM to work on the Ubuntu 22.04 operating system.

#€ Actualiza el sistema operativo Ubuntu.
# Update the operating system Ubuntu.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean

#€ Crea la conexión entre Bash y LOOM.
# Create the connection between Bash and LOOM.
#€ Encuentra el texto `LOOM` en el archivo `.bashrc`
# Find the text `LOOM` in the `.bashrc` file
if ! grep -q LOOM ~/.bashrc; then

  #€ Escribe una nueva línea en el archivo `.bashrc`.
  # Write a new line to the `.bashrc` file.
  echo "" >> ~/.bashrc

  #€ Escribe un comentario en el archivo `.bashrc`.
  # Write a comment to the `.bashrc` file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc

  #€ Escribe una variable con la dirección de LOOM en el archivo `.bashrc`.
  # Write a variable with the address of LOOM in the `.bashrc` file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc

  #€ Escribe el enlace a `bashrc` en el archivo `.bashrc`.
  # Write the link to `bashrc` in the `.bashrc` file.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc

  #€ Crea archivo de configuración personal de LOOM.
  # Create LOOM personal configuration file.
  cp \${LOOM_FOLDER}/default.env \${LOOM_FOLDER}/.env

fi
