pushd /tmp
git clone https://github.com/sphinx-doc/sphinx
cd sphinx
sudo -H pip3 install .
cd ..
sudo rm -rf sphinx
popd
sudo -H pip3 install breathe
sudo -H pip3 install sphinx-rtd-theme
sudo -H pip3 install recommonmark