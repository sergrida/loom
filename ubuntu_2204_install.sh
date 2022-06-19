# Installs the necessary requirements for LOOM to work on the Ubuntu 22.04 operating system.

# Update the operating system Ubuntu.
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean

# Create the connection between Bash and LOOM.
# Find text in a file.
if ! grep -q LOOM ~/.bashrc; then
  # Add the text to the document.
  echo "" >> ~/.bashrc
  echo "# Connection between Bash and LOOM." >> ~/.bashrc
  echo "LOOM_FOLDER=${PWD}" >> ~/.bashrc
  echo "source \${LOOM_FOLDER}/bashrc" >> ~/.bashrc
fi
