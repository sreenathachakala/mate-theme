#!/bin/bash
tar -xf /mate-theme/theme/$MATE_THEME.tar.xz
tar -xf /mate-theme/theme/$MATE_THEME_DARK.tar.xz
cd /icon-theme && tar -xf /icon-theme/$MATE_ICON_THEME.tar.xz

chown -R root:root /mate-theme/theme/$MATE_THEME
chown -R root:root /mate-theme/theme/$MATE_THEME_DARK

cp -r /mate-theme/theme/$MATE_THEME /usr/share/themes/$MATE_THEME
cp -r /mate-theme/theme/$MATE_THEME_DARK /usr/share/themes/$MATE_THEME_DARK
cp -r /mate-theme/theme/$MATE_ICON_THEME /usr/share/icons/$MATE_ICON_THEME
cp /mate-theme/theme/ubuntu-mate-custom.xml /usr/share/mate-background-properties/ubuntu-mate-custom.xml
cp /mate-theme/theme/$MATE_IMAGE /usr/share/backgrounds/$MATE_IMAGE
cp /mate-theme/theme/zzz.gschema.override /usr/share/glib-2.0/schemas/zzz.gschema.override
cp /mate-theme/theme/custom-mate.layout /usr/share/mate-panel/layouts/custom-mate.layout
cp -a /mate-theme/backgrounds/. /usr/share/backgrounds/

cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/*/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/*/start-here-symbolic.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/*/start-here-symbolic.svg

chmod 777 /usr/share/icons/$MATE_ICON_THEME/places/*/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places/*/start-here-symbolic.svg \
 /usr/share/icons/$MATE_ICON_THEME/status/*/start-here-symbolic.svg


sed -i 's/MATE_THEME/'"$MATE_THEME"'/' /usr/share/mate-background-properties/ubuntu-mate-custom.xml
sed -i 's/MATE_IMAGE/'"$MATE_IMAGE"'/' /usr/share/mate-background-properties/ubuntu-mate-custom.xml

sed -i 's/MATE_THEME/'"$MATE_THEME"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override
sed -i 's/MATE_IMAGE/'"$MATE_IMAGE"'/' /usr/share/glib-2.0/schemas/zzz.gschema.override

chown root:root /usr/share/mate-background-properties/ubuntu-mate-custom.xml
chown root:root /usr/share/backgrounds/$MATE_IMAGE
chown root:root /usr/share/glib-2.0/schemas/zzz.gschema.override
chmod 777 /usr/share/backgrounds/$MATE_IMAGE
chmod 777 /usr/share/mate-background-properties/ubuntu-mate-custom.xml
chmod 777 /usr/share/glib-2.0/schemas/zzz.gschema.override
chmod 777 /usr/share/mate-panel/layouts/custom-mate.layout

ls -l /usr/share/mate-panel/layouts/
cd /usr/share/glib-2.0/schemas && glib-compile-schemas /usr/share/glib-2.0/schemas