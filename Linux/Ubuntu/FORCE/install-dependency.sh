sudo apt-get install -y cmake
sudo apt-get install -y git
sudo apt-get install -y g++
sudo apt-get install -y gcc
sudo apt-get install -y make
sudo apt-get install -y parallel
echo -e "will cite" | parallel --bibtex
sudo apt-get install -y libgdal-dev 
sudo apt-get install -y gdal-bin 
sudo apt-get install -y python-gdal
sudo apt-get install -y libgsl0-dev
sudo apt-get install -y curl
sudo apt-get install -y unzip
sudo apt-get install -y lockfile-progs
sudo apt-get install -y rename
sudo mkdir -p /usr/local/src/opencv
pushd /usr/local/src/opencv
sudo wget https://github.com/opencv/opencv/archive/4.1.0.zip
sudo unzip 4.1.0.zip
cd opencv-4.1.0
sudo mkdir build
cd build
sudo cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
sudo make -j
sudo make install
sudo make clean
popd