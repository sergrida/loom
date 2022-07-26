# Instala Tor Browser.
# Install Tor Browser.
sudo apt install -y flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
