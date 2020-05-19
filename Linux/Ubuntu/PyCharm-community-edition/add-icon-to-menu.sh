PyCharm_Version=$1
cat <<EOF > /usr/share/applications/newitem.desktop
[Desktop Entry]
Version=1.0
Name=PyCharm
Exec=sudo bash /opt/pycharm-community-${PyCharm_Version}/bin/pycharm.sh
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;
X-Desktop-File-Install-Version=0.15"
Icon=/opt/pycharm-community-${PyCharm_Version}/bin/pycharm.svg
EOF
