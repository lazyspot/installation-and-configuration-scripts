#Install Clion
CLION_VERSION=$1
sudo wget https://download.jetbrains.com/cpp/CLion-${CLION_VERSION}.tar.gz -O /tmp/CLion-${CLION_VERSION}.tar.gz
sudo tar xvfz /tmp/CLion-${CLION_VERSION}.tar.gz -C /opt/
sudo rm -rf /tmp/CLion-${CLION_VERSION}.tar.gz