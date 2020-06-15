H5CHECK_VERSION=2.0.1
sudo wget https://support.hdfgroup.org/ftp/HDF5/tools/h5check/src/h5check-${H5CHECK_VERSION}.tar.gz -O /tmp/h5check-${H5CHECK_VERSION}.tar.gz
tar -xzvf /tmp/h5check-${H5CHECK_VERSION}.tar.gz -C /tmp
pushd /tmp/h5check-${H5CHECK_VERSION}
sudo ./configure --prefix=/opt
sudo make
sudo make install
popd
sudo rm -rf /tmp/h5check-${H5CHECK_VERSION}.tar.gz
sudo rm -rf /tmp/h5check-${H5CHECK_VERSION}
sudo ln -s /opt/bin/h5check /usr/bin/h5check