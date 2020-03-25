#Source:
#http://devopspy.com/linux/install-r-rstudio-centos-7/
TYPE=$1
VERSION=1.2.5033
#Install R
sudo yum install R -y

if [ $TYPE == "DESKTOP" ]; then
	#Install R studio desktop
	wget https://download1.rstudio.org/desktop/centos7/x86_64/rstudio-${VERSION}-x86_64.rpm -O /tmp/rstudio-${VERSION}-x86_64.rpm
	sudo yum install -y /tmp/rstudio-${VERSION}-x86_64.rpm
	rm -rf /tmp/rstudio-${VERSION}-x86_64.rpm
fi
if [ $TYPE == "SERVER" ]; then
	#Install R studio server
	wget https://download2.rstudio.org/server/centos6/x86_64/rstudio-server-rhel-${VERSION}-x86_64.rpm -O /tmp/rstudio-server-rhel-${VERSION}-x86_64.rpm
	sudo yum install -y /tmp/rstudio-server-rhel-${VERSION}-x86_64.rpm
	rm -rf /tmp/rstudio-server-rhel-${VERSION}-x86_64.rpm
	#Start and Log-in into RStudio
	sudo systemctl status rstudio-server
fi
#RStudio: http://localhost:8787/
#Deflaut username and password is user from linux but must have password
#Example: useradd rstudio
#passwd rstudio
#Admin123 Admin123