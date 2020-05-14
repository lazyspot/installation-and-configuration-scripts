sudo apt-get update -y
sudo apt-get install -y make
sudo apt-get install -y gcc
sudo apt-get install -y perl
#Add permission to shared folder
if [ "$1" == "" ]; then
	USER="$USER"
	else
	USER=$1
fi
sudo usermod -aG vboxsf ${USER}
echo "Should reboot"