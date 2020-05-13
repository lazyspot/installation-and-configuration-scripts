pushd /tmp
git clone https://github.com/doxygen/doxygen.git
cd doxygen
sudo mkdir build
cd build
sudo cmake -G "Unix Makefiles" ..
sudo make
sudo make install
cd ../..
sudo rm -rf doxygen
popd