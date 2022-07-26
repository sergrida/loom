# Borra los reportes de errores y oculta los mensajes en Ubuntu.
sudo rm /var/crash/*
sudo cp /etc/default/apport /etc/default/apport.old
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
