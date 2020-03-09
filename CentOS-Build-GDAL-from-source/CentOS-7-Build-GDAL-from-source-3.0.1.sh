CURRENT_DIRECTORY=`pwd`
cd /tmp
sudo yum install -y wget
sudo yum install -y hdf
sudo yum install -y hdf-devel
sudo yum install -y hdf5
sudo yum install -y hdf5-devel
WITH_HDF4="--with-hdf4=/tmp"
WITH_HDF5="--with-hdf5=/tmp"
#Install SQLite
sudo wget https://www.sqlite.org/2019/sqlite-autoconf-3290000.tar.gz
sudo tar xvfz sqlite-autoconf-3290000.tar.gz
cd sqlite-autoconf-3290000
sudo ./configure
sudo make
sudo make install
sudo rm -rf /tmp/sqlite-autoconf-3290000.tar.gz
sudo rm -rf /tmp/sqlite-autoconf-3290000
#Install libsqlite3x-devel boost-devel
sudo yum install -y libsqlite3x-devel.x86_64 
sudo yum install -y boost-devel.x86_64 
#Install PROJ
sudo wget https://download.osgeo.org/proj/proj-6.2.0.tar.gz
sudo tar xzf proj-6.2.0.tar.gz
cd proj-6.2.0
sudo ./configure
sudo make
sudo make install
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
#for Postgresql support
sudo yum install -y postgresql postgresql-devel
#libkml Support
##---------This part is depending on prebuilt libraries. In the future we may replace this by compiling them from source.
sudo wget http://s3.amazonaws.com/etc-data.koordinates.com/gdal-travisci/install-libkml-r864-64bit.tar.gz
sudo tar xzf install-libkml-r864-64bit.tar.gz
#Copy these required files to  /usr/local
sudo cp -r install-libkml/include/* /usr/local/include
sudo cp -r install-libkml/lib/* /usr/local/lib
sudo ldconfig
#download GDAL
sudo wget http://download.osgeo.org/gdal/3.0.1/gdal-3.0.1.tar.gz
#Untar
sudo tar xzf gdal-3.0.1.tar.gz
cd gdal-3.0.1
#Compile from source
sudo ./configure --with-libkml ${WITH_HDF5} 
sudo make
sudo make install
cd $CURRENT_DIRECTORY