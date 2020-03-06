#Install SNAP
yum install -y java
yum install -y wget
wget http://step.esa.int/downloads/7.0/installers/esa-snap_all_unix_7_0.sh -O /tmp/esa-snap_all_unix_7_0.sh
sudo chmod 755 /tmp/esa-snap_all_unix_7_0.sh
bash /tmp/esa-snap_all_unix_7_0.sh -q
rm -rf /tmp/esa-snap_all_unix_7_0.sh
#gpt path: gptPath="/opt/snap/bin/gpt"