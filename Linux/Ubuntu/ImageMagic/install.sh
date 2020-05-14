wget https://www.imagemagick.org/download/ImageMagick.tar.gz -O /tmp/ImageMagick.tar.gz
tar xvzf /tmp/ImageMagick.tar.gz -C /tmp
Image_magic_version=$(ls /tmp | grep ImageMagick-)
pushd /tmp/${Image_magic_version}/ && ./configure && popd
sudo make --directory=/tmp/${Image_magic_version}
sudo make install --directory=/tmp/${Image_magic_version}
pushd /tmp/${Image_magic_version} && sudo ldconfig /usr/local/lib && popd
sudo rm -rf /tmp/ImageMagick.tar.gz
sudo rm -rf /tmp/${Image_magic_version}