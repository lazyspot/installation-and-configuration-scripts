PyCharm_Version=$1
cat <<EOF > /usr/share/applications/PyCharm.desktop
[Desktop Entry]
Name=PyCharm
Exec=sudo /opt/pycharm-${PyCharm_Version}/bin/pycharm.sh
Terminal=false
Type=Application
StartupNotify=true
Categories=Development;
X-Desktop-File-Install-Version=0.15"
Icon=/opt/pycharm-${PyCharm_Version}/bin/pycharm.svg
EOF
