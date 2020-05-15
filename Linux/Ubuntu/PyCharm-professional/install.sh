PyCharm_Version=$1
echo "Install PyCharm professional ${PyCharm_Version}"
sudo wget https://download.jetbrains.com/python/pycharm-professional-${PyCharm_Version}.tar.gz -O /tmp/pycharm-professional-${PyCharm_Version}.tar.gz
sudo tar xvfz /tmp/pycharm-professional-${PyCharm_Version}.tar.gz -C /opt/
sudo rm -rf /tmp/pycharm-professional-${PyCharm_Version}.tar.gz
