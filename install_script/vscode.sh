#!/bin/sh

SRC_DIR="${HOME}/dotfiles/.vscode"
VSCODE_DIR="${HOME}/.config/Code/User"

rm "${VSCODE_DIR}/settings.json"
ln -s "${SRC_DIR}/settings.json" "${VSCODE_DIR}/settings.json"
rm "${VSCODE_DIR}/keybindings.json"
ln -s "${SRC_DIR}/keybindings.json" "${VSCODE_DIR}/keybindings.json"

# install extentions
cat "${SRC_DIR}/extensions" | while read line
do
 code --install-extension $line
done

code --list-extensions > "${SRC_DIR}/extensions"
