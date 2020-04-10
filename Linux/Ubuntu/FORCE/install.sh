pushd /usr/local/src/
sudo git clone https://github.com/davidfrantz/force.git
cd force
sudo ./splits.sh enable
sudo make -j$(nproc)
sudo make install
popd
