#CentOS VirtualBOX additional guest
sudo yum groupinstall -y "Development Tools"
sudo yum install -y gcc
sudo yum install -y perl
sudo yum install -y kernel-devel
sudo yum install -y kernel-headers
#Add permission to shared folder
if [ "$1" == "" ]; then
	USER="$USER"
	else
	USER=$1
fi
sudo usermod -aG vboxsf ${USER}
echo "Should reboot"