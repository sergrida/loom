#!/bin/bash

#@es Configura el sistema para que LOOM funcione en Ubuntu 22.04.
#@en Configure the system for LOOM to work on Ubuntu 22.04.

#@es Actualiza el sistema operativo Ubuntu.
#@en Update the Ubuntu operating system.
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt clean
sudo apt autoremove -y

#@es No existe el texto `LOOM` en el archivo `.bashrc`.
#@en There is no `LOOM` text in the `.bashrc` file.
if ! grep -q LOOM ~/.bashrc; then

  #@es Escribe una línea vacía en el archivo `.bashrc`.
  #@en Write an empty line to the `.bashrc` file.
  echo "" >> ~/.bashrc

  #@es Escribe un comentario en el archivo `.bashrc`.
  #@en Write a comment to the `.bashrc` file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc

  #@es Escribe una variable global con la dirección de LOOM, en el archivo `.bashrc`.
  #@en Write a global variable with the address of LOOM to the `.bashrc` file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc

  #@es Escribe la dirección del archivo `.bashrc` para leer y ejecutar su contenido.
  #@en Write the address of the `.bashrc` file to read and execute its contents.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc

  #@es Copia el archivo `default.env` con el nombre `.env`, utiliza el nuevo archivo para ingresar tu configuración personal.
  #@en Copy the `default.env` file with the name `.env`, use the new file to enter your personal settings.
  cp ${PWD}/default.env ${PWD}/.env

fi
