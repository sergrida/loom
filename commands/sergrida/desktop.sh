#@es Instala aplicaciones i configura para utilizar en mi equipo de escritorio.
#@en Install apps and configure to use on my desktop.

source ${LOOM_COMMANDS}/ubuntu/update.sh
source ${LOOM_COMMANDS}/build-essential/install.sh
source ${LOOM_COMMANDS}/wget/install.sh
source ${LOOM_COMMANDS}/curl/install.sh
source ${LOOM_COMMANDS}/python/install.sh
source ${LOOM_COMMANDS}/openssh/install.sh
source ${LOOM_COMMANDS}/fail2ban/install.sh
source ${LOOM_COMMANDS}/rar/install.sh
source ${LOOM_COMMANDS}/p7zip/install.sh
source ${LOOM_COMMANDS}/git/install.sh
source ${LOOM_COMMANDS}/git/config/global.sh
source ${LOOM_COMMANDS}/vim/install.sh
source ${LOOM_COMMANDS}/tmux/install.sh
source ${LOOM_COMMANDS}/node/install.sh
source ${LOOM_COMMANDS}/npm/n/install.sh
source ${LOOM_COMMANDS}/npm/n/version/change.sh
source ${LOOM_COMMANDS}/docker/install.sh
source ${LOOM_COMMANDS}/docker/compose/install.sh
source ${LOOM_COMMANDS}/google/chrome/install.sh
source ${LOOM_COMMANDS}/vscode/install.sh
source ${LOOM_COMMANDS}/vscode/extensions/vscode-language-pack-es/install.sh
source ${LOOM_COMMANDS}/vscode/extensions/code-spell-checker/install.sh
source ${LOOM_COMMANDS}/vscode/extensions/code-spell-checker-spanish/install.sh
source ${LOOM_COMMANDS}/vscode/extensions/markdown-preview-enhanced/install.sh
cp ${LOOM_COMMANDS}/sergrida/files/.config/Code/User/settings.json ~/.config/Code/User/settings.json
source ${LOOM_COMMANDS}/diodon/install.sh
source ${LOOM_COMMANDS}/libreoffice/install.sh
source ${LOOM_COMMANDS}/libreoffice/lang/es.sh
source ${LOOM_COMMANDS}/vlc/install.sh
source ${LOOM_COMMANDS}/kazam/install.sh
source ${LOOM_COMMANDS}/gimp/install.sh
source ${LOOM_COMMANDS}/inkscape/install.sh
source ${LOOM_COMMANDS}/blender/install.sh
source ${LOOM_COMMANDS}/transmission/install.sh
dconf load / < ${LOOM_COMMANDS}/sergrida/files/dconf-settings.ini
