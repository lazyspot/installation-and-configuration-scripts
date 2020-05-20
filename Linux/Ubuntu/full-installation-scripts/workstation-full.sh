if [ "$1" == "" ]; then
	USER_NAME="$USER_NAME"
	else
	USER_NAME=$1
fi
if [ "$2" == "" ]; then
	PASSWORD="$USER_NAME"
	else
	PASSWORD=$2
fi
PyCharm_Version=2020.1.1
CLION_VERSION=2020.1.1
ESA_SNAP_VERSION=7.0
cd ..
sudo apt-get update -y
sudo bash Development-tools/install.sh
sudo bash Python/install.sh
sudo bash QGIS/install.sh
sudo bash HDF/install.sh
sudo bash LibreOffice/install.sh
sudo bash GIT/install.sh
sudo bash Google-earth/install-dependency.sh
sudo bash Google-earth/install.sh
sudo bash PyCharm-professional/install-dependency.sh
sudo bash PyCharm-professional/install.sh ${PyCharm_Version}
sudo bash PyCharm-professional/add-icon-to-menu.sh ${PyCharm_Version}
sudo bash CLion/install-dependency.sh
sudo bash CLion/install.sh ${CLION_VERSION}
sudo bash CLion/add-icon-to-menu.sh ${CLION_VERSION}
sudo bash ESA-SNAP/install-dependency.sh
sudo bash ESA-SNAP/install.sh ${ESA_SNAP_VERSION}
sudo bash ESA-SNAP/add-icon-to-menu.sh
sudo bash CodeBlocks/install.sh
sudo bash GDAL/install.sh
sudo bash OpenCV/install.sh
sudo bash Doxygen/install-dependency.sh
sudo bash Doxygen/install.sh
sudo bash Sphinx/install-dependency.sh
sudo bash Sphinx/install.sh
sudo reboot