CLION_VERSION=$1
cat <<EOF > /usr/share/applications/newitem.desktop
[Desktop Entry]
Version=1.0
Name=CLion
Exec=sudo /opt/clion-${CLION_VERSION}/bin/clion.sh
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;
X-Desktop-File-Install-Version=0.15"
Icon=/opt/clion-${CLION_VERSION}/bin/clion.svg
EOF
