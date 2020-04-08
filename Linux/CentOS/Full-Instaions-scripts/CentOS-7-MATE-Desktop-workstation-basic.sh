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
sudo yum install -y dos2unix
cd ..
cd CentOS-Install-basic-softwear
bash <(dos2unix < CentOS-7-Install-basic-softwear.sh)
cd ..
cd CentOS-Install-MATE-Desktop
bash <(dos2unix < CentOS-7-Install-MATE-Desktop.sh)
cd ..
cd CentOS-Install-VirtualBox-guest-additions
bash <(dos2unix < CentOS-7-Install-VirtualBox-guest-additions.sh ) ${USER_NAME}
cd ..
cd CentOS-Install-Google-Earth-Pro
bash <(dos2unix < CentOS-7-Install-Google-Earth-Pro.sh)
cd ..
cd CentOS-Build-GDAL-from-source
bash <(dos2unix < CentOS-7-Build-GDAL-from-source-3.0.1.sh) ${USER_NAME}
bash <(dos2unix < CentOS-7-Add-python-to-GDAL.sh)
cd ..
cd CentOS-Install-CodeBlocks
bash <(dos2unix < CentOS-7-Install-CodeBlocks.sh)
cd ..
cd CentOS-Install-PyCharm-community-edition
bash <(dos2unix < CentOS-7-Install-PyCharm-community-edition.sh) ${PyCharm_Version}
bash <(dos2unix < CentOS-7-Add-icon-to-MATE-Desktop.sh) ${PyCharm_Version}
cd ..
cd CentOS-Install-ESA-SNAP
bash <(dos2unix < CentOS-7-Install-ESA-SNAP.sh)
bash <(dos2unix < CentOS-7-Add-icon-to-MATE-Desktop.sh) ${ESA_SNAP_VERSION}
cd ..
cd CentOS-Install-QGIS
bash <(dos2unix < CentOS-7-Install-QGIS.sh)
cd ..
cd CentOS-Install-Tkinker
bash <(dos2unix < CentOS-7-Install-Tkinker.sh)
cd ..
cd CentOS-Install-GIT
bash <(dos2unix < CentOS-7-Install-GIT.sh)
cd ..
cd CentOS-Install-Python-libraries
bash <(dos2unix < CentOS-7-Install-Python-libraries.sh)
cd ..
cd CentOS-Install-R
bash <(dos2unix < CentOS-7-Install-R.sh)
cd ..
cd CentOS-Install-R-Studio
bash <(dos2unix < CentOS-7-Install-R-Studio.sh) DESKTOP
cd ..
cd CentOS-Install-Libre-Office
bash <(dos2unix < CentOS-7-Install-Libre-Office.sh)
cd ..
cd CentOS-Install-X-RDP
#bash <(dos2unix < CentOS-7-Install-X-RDP.sh) $USER_NAME $PASSWORD
cd ..
cd CentOS-MATE-Configuration
bash <(dos2unix < CentOS-7-Set-MATE-Theme.sh) ${USER_NAME}
cd ..
reboot
