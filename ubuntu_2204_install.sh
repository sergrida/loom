#!/bin/bash

# Installs the necessary requirements for LOOM to work on the Ubuntu 22.04 operating system.

# Update the operating system Ubuntu.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean

# Create the connection between Bash and LOOM.
# Find the text `LOOM` in the `.bashrc` file
if ! grep -q LOOM ~/.bashrc; then
  # Write a blank space in the `.bashrc` file.
  echo "" >> ~/.bashrc
  # Write a comment to the `.bashrc` file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc
  # Write a variable with the address of LOOM in the `.bashrc` file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc
  # Write the link to `bashrc` in the `.bashrc` file.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc
fi
