sudo apt-get install -y cmake
sudo apt-get install -y git
sudo apt-get install -y g++
sudo apt-get install -y gcc
sudo apt-get install -y make
sudo apt-get install -y curl
sudo apt-get install -y unzip
sudo apt-get install -y lockfile-progs
sudo apt-get install -y rename
sudo apt-get install -y build-essential
sudo apt-get install -y libgtk2.0-dev 
sudo apt-get install -y pkg-config
sudo apt-get install -y libavcodec-dev
sudo apt-get install -y libavformat-dev
sudo apt-get install -y libswscale-dev
sudo apt-get install -y python-dev
sudo apt-get install -y python-numpy
sudo apt-get install -y libtbb2
sudo apt-get install -y libtbb-dev
sudo apt-get install -y libjpeg-dev
sudo apt-get install -y libpng-dev
sudo apt-get install -y libtiff-dev
sudo apt-get install -y libjasper-dev
sudo apt-get install -y libdc1394-22-dev
sudo apt-get install -y parallel
echo -e "will cite" | parallel --bibtex
sudo apt-get install -y libgdal-dev
sudo apt-get install -y gdal-bin
sudo apt-get install -y python-gdal
sudo apt-get install -y libgsl0-dev
sudo mkdir -p /usr/local/src/opencv
pushd /usr/local/src/opencv
sudo wget https://github.com/opencv/opencv/archive/4.1.0.zip
sudo unzip 4.1.0.zip
cd opencv-4.1.0
sudo mkdir build
cd build
sudo cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
sudo make -j$(nproc)
sudo make install
sudo make clean
popd