#Install Google Earth pro
sudo yum install -y wget
wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable-current.x86_64.rpm -O /tmp/google-earth-pro-stable-current.x86_64.rpm
sudo yum install -y /tmp/google-earth-pro-stable-current.x86_64.rpm
sudo yum install -y xdotool
sudo rm -rf /tmp/google-earth-pro-stable-current.x86_64.rpm
