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
PyCharm_Version=2019.3.4
ESA_SNAP_VERSION=7.0
cd ..
sudo apt-get update -y
sudo bash Python/install.sh
sudo bash PyCharm-community-edition/install-dependency.sh
sudo bash PyCharm-community-edition/install.sh ${PyCharm_Version}
sudo bash PyCharm-community-edition/add-icon-to-menu.sh ${PyCharm_Version}
sudo bash ESA-SNAP/install-dependency.sh
sudo bash ESA-SNAP/install.sh ${ESA_SNAP_VERSION}
sudo bash ESA-SNAP/add-icon-to-menu.sh
sudo reboot