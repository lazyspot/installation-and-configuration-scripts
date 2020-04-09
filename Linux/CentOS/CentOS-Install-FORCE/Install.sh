sudo yum install -y curl
sudo yum install -y curl-devel
sudo yum install -y boost-devel 
sudo yum install -y gsl-devel
sudo yum install -y opencv
sudo yum install -y opencv-devel
sudo apt-get install -y git
sudo apt-get install -y g++
sudo apt-get install -y libgsl-dev
sudo apt-get install -y python3-opencv
sudo apt-get install -y libpng-dev
sudo apt-get install -y libjpeg-dev
sudo apt-get install -y libopenexr-dev
sudo apt-get install -y libtiff-dev
sudo apt-get install -y libwebp-dev
pushd /usr/local/src/
sudo git clone https://github.com/davidfrantz/force.git
cd force
make -j
sudo make install
popd


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
mkdir -p ~/src/opencv
cd ~/src/opencv
wget https://github.com/opencv/opencv/archive/4.1.0.zip
unzip 4.1.0.zip
cd opencv-4.1.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j
sudo make install
make clean


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
mkdir -p ~/src/opencv
cd ~/src/opencv
wget https://github.com/opencv/opencv/archive/4.1.0.zip
unzip 4.1.0.zip
cd opencv-4.1.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j
sudo make install
make clean