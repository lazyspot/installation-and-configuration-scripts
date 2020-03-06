#Install python
sudo yum install -y python3
sudo yum install -y python3-libs
sudo yum install -y python3-devel
sudo yum install -y python3-pip
sudo pip3 install --upgrade pip
pip3 install numpy
pip3 install GDAL==$(gdal-config --version) --global-option=build_ext --global-option="-I/usr/include/gdal"
# Source: https://gis.stackexchange.com/questions/153199/import-error-no-module-named-gdal-array