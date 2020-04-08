pushd /usr/local/src/
sudo git clone https://github.com/davidfrantz/force.git
cd force
sudo make -j
sudo make install
popd
