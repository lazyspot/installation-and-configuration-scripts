PyCharm_Version=$1
echo "Install PyCharm Community ${PyCharm_Version}"
sudo wget https://download.jetbrains.com/python/pycharm-community-${PyCharm_Version}.tar.gz
sudo tar xvfz pycharm-community-${PyCharm_Version}.tar.gz -C /opt/
sudo rm -rf pycharm-community-${PyCharm_Version}.tar.gz
