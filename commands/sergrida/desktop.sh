# Install apps and configure to use on my desktop.

${LOOM} ubuntu.update
${LOOM} install gcc
${LOOM} install wget
${LOOM} install curl
${LOOM} install python3
${LOOM} install openssh
${LOOM} install fail2ban
${LOOM} install rar
${LOOM} install p7zip
${LOOM} install git
${LOOM} git.config.global
${LOOM} install vim
${LOOM} install tmux
${LOOM} install node.js
${LOOM} install npm
${LOOM} npm.n.install
${LOOM} npm.n.version.change
${LOOM} install docker
${LOOM} docker.compose.install
${LOOM} google.chrome.install
${LOOM} install code
${LOOM} code.extensions.vscode-language-pack-es.install
${LOOM} code.extensions.code-spell-checker.install
${LOOM} code.extensions.code-spell-checker-spanish.install
${LOOM} code.extensions.markdown-preview-enhanced.install
cp ${LOOM_COMMANDS}/sergrida/files/.config/Code/User/settings.json ~/.config/Code/User/settings.json
${LOOM} install diodon
${LOOM} install libreoffice
${LOOM} libreoffice.lang.es
${LOOM} install vlc
${LOOM} install kazam
${LOOM} install gimp
${LOOM} install inkscape
${LOOM} install blender
${LOOM} install transmission
${LOOM} dfconf.import ${LOOM_COMMANDS}/sergrida/files/dconf_settings.ini
