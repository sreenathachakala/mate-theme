#!/bin/bash
export MATE_THEME=WhiteSur-Light
export MATE_THEME_DARK=WhiteSur-Dark
export MATE_ICON_THEME=WhiteSur
export MATE_ICON_THEME_DARK=WhiteSur-dark
export MATE_IMAGE=Black.jpg
export FONTFILE=IBM_Plex_Sans
export FONT_NAME='IBM Plex Sans 11'
export TITLEBAR_FONTNAME='IBM Plex Sans Medium 11'
export DOCK_THEME='mcOS-BS-iMacM1-Black'

sudo apt install plank -y

ls /mate-theme/icon-theme/

cd /mate-theme/theme/ && tar -xf $MATE_THEME.tar.xz
cd /mate-theme/theme/ && tar -xf $MATE_THEME_DARK.tar.xz
cd /mate-theme/icon-theme && tar -xf $MATE_ICON_THEME.tar.xz
cd /mate-theme/fonts && unzip $FONTFILE.zip -d $FONTFILE
cd /
git clone https://github.com/hamburgerghini1/macos-plank-themes.git


cp -a /macos-plank-themes/.local/share/plank/themes/. /usr/share/plank/themes/

cp /mate-theme/plank.desktop /etc/xdg/autostart/plank.desktop

chown -R root:root /mate-theme/theme/$MATE_THEME
chown -R root:root /mate-theme/theme/$MATE_THEME_DARK

cp -r /mate-theme/theme/$MATE_THEME /usr/share/themes/$MATE_THEME
cp -r /mate-theme/theme/$MATE_THEME_DARK /usr/share/themes/$MATE_THEME_DARK
cp -r /mate-theme/icon-theme/$MATE_ICON_THEME /usr/share/icons/$MATE_ICON_THEME
cp -r /mate-theme/icon-theme/$MATE_ICON_THEME_DARK /usr/share/icons/$MATE_ICON_THEME_DARK
cp -a /mate-theme/fonts/$FONTFILE/. /usr/share/fonts/
cp /mate-theme/theme/ubuntu-mate-custom.xml /usr/share/mate-background-properties/ubuntu-mate-custom.xml
cp /mate-theme/theme/$MATE_IMAGE /usr/share/backgrounds/$MATE_IMAGE
cp /mate-theme/theme/zzz.gschema.override /usr/share/glib-2.0/schemas/zzz.gschema.override
# cp /mate-theme/theme/custom-mate.layout /usr/share/mate-panel/layouts/custom-mate.layout
cp -a /mate-theme/backgrounds/. /usr/share/backgrounds/ubuntu-mate-common/

# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/*/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/*/start-here-symbolic.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/*/start-here-symbolic.svg


# chmod 777 /usr/share/icons/$MATE_ICON_THEME/places/*/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places/*/start-here-symbolic.svg \
#  /usr/share/icons/$MATE_ICON_THEME/status/*/start-here-symbolic.svg

# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/16/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/22/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/24/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/scalable/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/symbolic/start-here-symbolic.svg

# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/16/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/22/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/24/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/scalable/start-here.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/symbolic/start-here-symbolic.svg

# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/16/start-here-symbolic.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/22/start-here-symbolic.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/24/start-here-symbolic.svg
# cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/symbolic/start-here-symbolic.svg

# chmod 777 /usr/share/icons/$MATE_ICON_THEME/places/16/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places/22/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places/24/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places/scalable/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places/symbolic/start-here-symbolic.svg

# chmod 777 /usr/share/icons/$MATE_ICON_THEME/places@2x/16/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places@2x/22/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places@2x/24/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places@2x/scalable/start-here.svg \
#  /usr/share/icons/$MATE_ICON_THEME/places@2x/symbolic/start-here-symbolic.svg

#  chmod 777 /usr/share/icons/$MATE_ICON_THEME/status/16/start-here-symbolic.svg \
#  /usr/share/icons/$MATE_ICON_THEME/status/22/start-here-symbolic.svg \
#  /usr/share/icons/$MATE_ICON_THEME/status/24/start-here-symbolic.svg \
#  /usr/share/icons/$MATE_ICON_THEME/status/symbolic/start-here-symbolic.svg

chmod -R 777 /usr/share/plank/themes/


sed -i 's/MATE_THEME/'"$MATE_THEME"'/' /usr/share/mate-background-properties/ubuntu-mate-custom.xml
sed -i 's/MATE_IMAGE/'"$MATE_IMAGE"'/' /usr/share/mate-background-properties/ubuntu-mate-custom.xml

sed -i 's/MATE_THEME/'"$MATE_THEME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/MATE_IMAGE/'"$MATE_IMAGE"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/MATE_ICON_THEME/'"$MATE_ICON_THEME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/FONT_NAME/'"$FONT_NAME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/TITLEBAR_FONTNAME/'"$TITLEBAR_FONTNAME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/DOCK_THEME/'"$DOCK_THEME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override


chown root:root /usr/share/mate-background-properties/ubuntu-mate-custom.xml
chown root:root /usr/share/backgrounds/$MATE_IMAGE
chown root:root /usr/share/glib-2.0/schemas/zzz.gschema.override
chmod 777 /usr/share/backgrounds/$MATE_IMAGE
chmod 777 /usr/share/mate-background-properties/ubuntu-mate-custom.xml
chmod 777 /usr/share/glib-2.0/schemas/zzz.gschema.override
# chmod 777 /usr/share/mate-panel/layouts/custom-mate.layout

ls -l /usr/share/mate-panel/layouts/
cd /usr/share/glib-2.0/schemas && glib-compile-schemas /usr/share/glib-2.0/schemas