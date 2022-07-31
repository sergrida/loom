#!/bin/bash

# Configure the system for LOOM to work on Ubuntu 22.04.

# Update Ubuntu operating system.
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt clean
sudo apt autoremove -y

# `LOOM` text does not exist in `.bashrc` file.
if ! grep -q LOOM ~/.bashrc; then

  # Write an empty line in the `.bashrc` file.
  echo "" >> ~/.bashrc

  # Write a comment to the `.bashrc` file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc

  # Write a global variable with the address of LOOM, in the `.bashrc` file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc

  # Run the `bashrc` file, with Bash variables and alias.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc

  # Copy the `default.env` file with the name `.env`, use the new file to enter your personal settings.
  cp ${PWD}/default.env ${PWD}/.env

fi
