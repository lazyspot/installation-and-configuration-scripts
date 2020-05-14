wget http://step.esa.int/main/wp-content/uploads/2015/11/snap_survey_125.jpg -O /tmp/snap_survey_125.jpg
sudo apt-get install -y imagemagick
sudo convert /tmp/snap_survey_125.jpg /opt/snap/bin/snap_survey_125.png
sudo rm -rf /tmp/snap_survey_125.jpg
cat <<EOF > /usr/share/applications/SNAP\ Desktop-0.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Type=Application
Name=SNAP Desktop
Exec=/bin/sh "/opt/snap/bin/snap"
Categories=Application;
Icon=/opt/snap/bin/snap_survey_125.png
EOF
