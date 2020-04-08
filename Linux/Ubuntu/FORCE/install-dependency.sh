sudo apt-get install -y cmake
sudo apt-get install -y git
sudo apt-get install -y g++
sudo apt-get install -y gcc
sudo apt-get install -y make
sudo apt-get install -y parallel
parallel --bibtex
sudo apt-get install -y libgdal-dev 
sudo apt-get install -y gdal-bin 
sudo apt-get install -y python-gdal
sudo apt-get install -y libgsl0-dev
sudo apt-get install -y curl
sudo apt-get install -y unzip
sudo apt-get install -y lockfile-progs
sudo apt-get install -y rename
mkdir -p /usr/local/src/opencv
pushd /usr/local/src/opencv
wget https://github.com/opencv/opencv/archive/4.1.0.zip
unzip 4.1.0.zip
cd opencv-4.1.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j
sudo make install
make clean
popd