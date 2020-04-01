if [ "$1" == "" ]; then
	USER_NAME="$USER"
	else
	USER_NAME=$1
fi
sudo -H -u ${USER_NAME} bash -c 'gsettings set org.mate.Marco.general theme 'TraditionalOk''
sudo -H -u ${USER_NAME} bash -c 'gsettings set org.mate.interface icon-theme 'mate''
sudo -H -u ${USER_NAME} bash -c 'gsettings set org.mate.interface gtk-theme 'TraditionalOk''