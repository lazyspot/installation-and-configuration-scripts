MAJA_VERSION=3.3.5
sudo unzip MAJA-${MAJA_VERSION}_noTM.zip
sudo mkdir /opt/MAJA/
sudo chmod 755 /opt/MAJA/
sudo bash MAJA-${MAJA_VERSION}.run --target /opt/MAJA/
sudo /opt/MAJA/bin/maja --help
sudo rm -rf MAJA-${MAJA_VERSION}.run