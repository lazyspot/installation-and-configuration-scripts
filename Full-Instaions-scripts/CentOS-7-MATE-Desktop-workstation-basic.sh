if [ "$1" == "" ]; then
	USER="$USER"
	else
	USER=$1
fi
PyCharm_Version=2019.3.3
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
bash <(dos2unix < CentOS-7-Install-VirtualBox-guest-additions.sh ) ${USER}
cd ..
cd CentOS-Install-Google-Earth-Pro
bash <(dos2unix < CentOS-7-Install-Google-Earth-Pro.sh)
cd ..
cd CentOS-Build-GDAL-from-source
bash <(dos2unix < CentOS-7-Build-GDAL-from-source-3.0.1.sh)
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
reboot
