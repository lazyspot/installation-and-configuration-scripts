#Install SNAP
ESA_SNAP_VERSION=$1
wget http://step.esa.int/downloads/${ESA_SNAP_VERSION}/installers/esa-snap_all_unix_${ESA_SNAP_VERSION:0:1}_${ESA_SNAP_VERSION:2:3}.sh -O /tmp/esa-snap_all_unix_${ESA_SNAP_VERSION:0:1}_${ESA_SNAP_VERSION:2:3}.sh
sudo chmod 755 /tmp/esa-snap_all_unix_${ESA_SNAP_VERSION:0:1}_${ESA_SNAP_VERSION:2:3}.sh
sudo mkdir -p /opt/snap/
sudo bash /tmp/esa-snap_all_unix_${ESA_SNAP_VERSION:0:1}_${ESA_SNAP_VERSION:2:3}.sh -q -dir /opt/snap/
rm -rf /tmp/esa-snap_all_unix_${ESA_SNAP_VERSION:0:1}_${ESA_SNAP_VERSION:2:3}.sh
#gpt path: gptPath="/opt/snap/bin/gpt"
#sudo snap --nosplash --nogui --modules --list --refresh
sudo snap --nosplash --nogui --modules --update-all
sudo bash download-srtm.sh