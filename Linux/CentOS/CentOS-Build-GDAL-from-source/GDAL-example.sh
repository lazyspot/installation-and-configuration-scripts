#Install the tools that we will use
yum groupinstall "Development Tools"
yum install wget

#for Postgresql support
sudo yum install postgresql postgresql-devel

#libkml Support
##---------This part is depending on prebuilt libraries. In the future we may replace this by compiling them from source.
wget http://s3.amazonaws.com/etc-data.koordinates.com/gdal-travisci/install-libkml-r864-64bit.tar.gz
tar xzf install-libkml-r864-64bit.tar.gz

#Copy these required files to  /usr/local
sudo cp -r install-libkml/include/* /usr/local/include
sudo cp -r install-libkml/lib/* /usr/local/lib
sudo ldconfig


#download GDAL
wget http://download.osgeo.org/gdal/2.2.3/gdal-2.2.3.tar.gz

#Untar
tar xzf gdal-2.2.3.tar.gz
cd gdal-2.2.3

#Compile from source
./configure --with-libkml 
make
make install