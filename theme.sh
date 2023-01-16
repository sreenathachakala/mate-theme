#!/bin/bash
tar -xf /mate-theme/theme/$MATE_THEME
cd /icon-theme && tar -xf /icon-theme/$MATE_ICON_THEME
chown -R root:root /mate-theme/theme/$MATE_THEME
cp -r /mate-theme/theme/$MATE_THEME /usr/share/themes/$MATE_THEME
cp -r /mate-theme/theme/$MATE_ICON_THEME /usr/share/icons/$MATE_ICON_THEME
cp /mate-theme/theme/ubuntu-mate-custom.xml /usr/share/mate-background-properties/ubuntu-mate-custom.xml
cp /mate-theme/theme/$MATE_IMAGE /usr/share/backgrounds/$MATE_IMAGE
cp /mate-theme/theme/zzz.gschema.override /usr/share/glib-2.0/schemas/zzz.gschema.override
cp /mate-theme/theme/custom-mate.layout /usr/share/mate-panel/layouts/custom-mate.layout

cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/16/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/22/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/24/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/scalable/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places/symbolic/start-here-symbolic.svg

cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/16/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/22/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/24/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/scalable/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/places@2x/symbolic/start-here-symbolic.svg

cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/16/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/22/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/24/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/scalable/start-here.svg
cp /mate-theme/icon-theme/start-here.svg /usr/share/icons/$MATE_ICON_THEME/status/symbolic/start-here-symbolic.svg

chmod 777 /usr/share/icons/$MATE_ICON_THEME/places/16/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places/22/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places/24/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places/scalable/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places/symbolic/start-here-symbolic.svg

chmod 777 /usr/share/icons/$MATE_ICON_THEME/places@2x/16/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places@2x/22/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places@2x/24/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places@2x/scalable/start-here.svg \
 /usr/share/icons/$MATE_ICON_THEME/places@2x/symbolic/start-here-symbolic.svg


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