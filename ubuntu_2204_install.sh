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
  # Write a blank space in the file.
  echo "" >> ~/.bashrc
  # Write a comment to the file.
  echo "# Connection between Bash and LOOM." >> ~/.bashrc
  # Write to a variable the address of LOOM in the file.
  echo "export LOOM_FOLDER=${PWD}" >> ~/.bashrc
  # Write read file `bashrc`.
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc
fi
