#!/bin/sh

# Script by https://github.com/pauloimon

readonly LOCAL_APPS_PATH="$HOME/.local/share/applications"
readonly THEME_PATH="/usr/share/themes/Adwaita/gtk-2.0"

cp /usr/share/applications/anydesk.desktop "$LOCAL_APPS_PATH"

sed -i "s\\^Exec=\\Exec=env GTK2_RC_FILES=$THEME_PATH/gtkrc GTK_DATA_PREFIX= \\" "$LOCAL_APPS_PATH/anydesk.desktop"

echo "Done!"
