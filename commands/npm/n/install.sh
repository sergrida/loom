# Instala de n de npm.
# Install n from npm.

# Si no existe la carpeta.
# If the folder does not exist.
if [ ! -d "/usr/local/n" ]; then

  # Arregla permisos para instalar `n`.
  # Fix permissions to install `n`.
  sudo mkdir -p /usr/local/n
  sudo chown -R $(whoami) /usr/local/n
  sudo mkdir -p /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
  sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

fi

# Instala de n de npm.
# Install n from npm.
sudo npm install -g n
