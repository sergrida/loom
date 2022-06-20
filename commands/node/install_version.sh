#€ 
# 
sudo npm install --location=global n

if [ $# -eq 0 ]; then
  sudo n ${2}
else
  sudo n lts
fi
