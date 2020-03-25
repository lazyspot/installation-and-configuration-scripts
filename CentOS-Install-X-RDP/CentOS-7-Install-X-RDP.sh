MYUSER=$1
MYPASS=$2
sudo yum-config-manager --enable cr
sudo yum upgrade -y

yum install -y xrdp tigervnc-server
systemctl enable xrdp
systemctl start xrdp
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
iptables -I INPUT -p tcp --dport 3389 -j ACCEPT
adduser $MYUSER
echo -e "$MYPASS\n$MYPASS" | passwd $MYUSER

cat <<EOF > /home/$MYUSER/.Xclients
[ -f ~/.changepass ] && userpasswd && rm /home/$MYUSER/.changepass
mate-session
EOF
chown $MYUSER /home/$MYUSER/.Xclients
chmod 755 /home/$MYUSER/.Xclients
touch /home/$MYUSER/.changepass
chown $MYUSER /home/$MYUSER/.changepass