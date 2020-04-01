SQL_LITE_VERSION=3290000
YEAR=2019
PROJ_VERSION=6.2.0
GDAL_VERSION=3.0.1
sudo yum install -y wget
sudo yum install -y hdf
sudo yum install -y hdf-devel
sudo yum install -y hdf5
sudo yum install -y hdf5-devel
WITH_HDF4="--with-hdf4"
WITH_HDF5="--with-hdf5"
#Install SQLite
sudo wget https://www.sqlite.org/${YEAR}/sqlite-autoconf-${SQL_LITE_VERSION}.tar.gz -O /tmp/sqlite-autoconf-${SQL_LITE_VERSION}.tar.gz
sudo tar xvfz /tmp/sqlite-autoconf-${SQL_LITE_VERSION}.tar.gz -C /tmp/
pushd /tmp/sqlite-autoconf-${SQL_LITE_VERSION}/ && sudo ./configure && popd
sudo make --directory=/tmp/sqlite-autoconf-${SQL_LITE_VERSION}
sudo make install --directory=/tmp/sqlite-autoconf-${SQL_LITE_VERSION}
sudo rm -rf /tmp/sqlite-autoconf-${SQL_LITE_VERSION}.tar.gz
sudo rm -rf /tmp/sqlite-autoconf-${SQL_LITE_VERSION}
#Install libsqlite3x-devel boost-devel
sudo yum install -y libsqlite3x-devel.x86_64
sudo yum install -y boost-devel.x86_64
#Install PROJ
sudo wget https://download.osgeo.org/proj/proj-${PROJ_VERSION}.tar.gz -O /tmp/proj-${PROJ_VERSION}.tar.gz
sudo tar xzf /tmp/proj-${PROJ_VERSION}.tar.gz -C /tmp/
pushd /tmp/proj-${PROJ_VERSION}/ && sudo ./configure && popd
sudo make --directory=/tmp/proj-${PROJ_VERSION}
sudo make install --directory=/tmp/proj-${PROJ_VERSION}
sudo rm -rf /tmp/proj-${PROJ_VERSION}.tar.gz
sudo rm -rf /tmp/proj-${PROJ_VERSION}
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
#for Postgresql support
sudo yum install -y postgresql
sudo yum install -y postgresql-devel
#libkml Support
##---------This part is depending on prebuilt libraries. In the future we may replace this by compiling them from source.
sudo wget http://s3.amazonaws.com/etc-data.koordinates.com/gdal-travisci/install-libkml-r864-64bit.tar.gz -O /tmp/install-libkml-r864-64bit.tar.gz
sudo tar xzf /tmp/install-libkml-r864-64bit.tar.gz -C /tmp/
#Copy these required files to  /usr/local
sudo cp -r /tmp/install-libkml/include/* /usr/local/include
sudo cp -r /tmp/install-libkml/lib/* /usr/local/lib
sudo ldconfig
#download GDAL
sudo wget http://download.osgeo.org/gdal/${GDAL_VERSION}/gdal-${GDAL_VERSION}.tar.gz -O /tmp/gdal-${GDAL_VERSION}.tar.gz
#Untar
sudo tar xzf /tmp/gdal-${GDAL_VERSION}.tar.gz -C /tmp/
#Compile from source
pushd /tmp/gdal-${GDAL_VERSION} && sudo ./configure --with-libkml ${WITH_HDF5} && popd
sudo make --directory=/tmp/gdal-${GDAL_VERSION}
sudo make install --directory=/tmp/gdal-${GDAL_VERSION}
sudo rm -rf /tmp/install-libkml-r864-64bit.tar.gz
sudo rm -rf /tmp/install-libkml/
sudo rm -rf /tmp/gdal-${GDAL_VERSION}.tar.gz
sudo rm -rf /tmp/gdal-${GDAL_VERSION}
#Export variable as user
if [ "$1" == "" ]; then
	USER_NAME="${USER}"
	else
	USER_NAME=$1
fi
variable_name="LD_LIBRARY_PATH"
variable_value="/usr/local/lib:${variable_name}"
sudo -H -u ${USER_NAME} bash -c "echo export ${variable_name}=${variable_value}>>~/.bashrc"
sudo -H -u ${USER_NAME} bash -c "echo ${variable_name}=${variable_value}>>~/.profile"
sudo bash -c "echo ${variable_name}=${variable_value}>>/etc/environment"
#https://stackoverflow.com/questions/13046624/how-to-permanently-export-a-variable-in-linux