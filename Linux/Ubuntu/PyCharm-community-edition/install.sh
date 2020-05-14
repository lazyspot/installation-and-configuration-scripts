PyCharm_Version=$1
echo "Install PyCharm Community ${PyCharm_Version}"
sudo wget https://download.jetbrains.com/python/pycharm-community-${PyCharm_Version}.tar.gz -O /tmp/pycharm-community-${PyCharm_Version}.tar.gz
sudo tar xvfz /tmp/pycharm-community-${PyCharm_Version}.tar.gz -C /opt/
sudo rm -rf /tmp/pycharm-community-${PyCharm_Version}.tar.gz
