sudo apt-get install -y libarmadillo-dev
sudo apt-get install -y libfltk1.3-dev
if [ "$1" == "" ]; then
	USER_NAME="$USER_NAME"
	else
	USER_NAME=$1
fi
mkdir /home/${USER_NAME}/src
mkdir /home/${USER_NAME}/splits
pushd /home/${USER_NAME}/src
wget http://sebastian-mader.net/wp-content/uploads/2017/11/splits-1.9.tar.gz
tar -xzf splits-1.9.tar.gz
cd splits-1.9
./configure --prefix=/home/${USER_NAME}/splits CPPFLAGS="-I /usr/include/gdal" CXXFLAGS=-fpermissive
make
make install
make clean
popd