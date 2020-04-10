pushd /tmp/
sudo apt-get install -y libarmadillo-dev
sudo apt-get install -y libfltk1.3-dev
sudo wget http://sebastian-mader.net/wp-content/uploads/2017/11/splits-1.9.tar.gz
sudo tar -xzf splits-1.9.tar.gz
cd splits-1.9

sudo ./configure CPPFLAGS="-I /usr/include/gdal" CXXFLAGS=-fpermissive
sudo make
sudo make install
sudo make clean
popd