CLION_VERSION=$1
cat <<EOF > /usr/share/applications/CLion.desktop
[Desktop Entry]
Name=CLion
Exec=sudo bash /opt/clion-${CLION_VERSION}/bin/clion.sh
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;
X-Desktop-File-Install-Version=0.15"
Icon=/opt/clion-${CLION_VERSION}/bin/clion.svg
EOF