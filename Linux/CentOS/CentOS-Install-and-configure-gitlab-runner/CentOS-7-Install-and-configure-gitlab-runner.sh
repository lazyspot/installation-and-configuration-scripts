#!/bin/bash
gitlab-runner stop
gitlab-runner uninstall
yum remove -y gitlab-runner
#Install docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo service docker start

#Install gitlab runner
USER=gitlab
TOKEN=$2
RUNNER_NAME=gitlab-runner-$1
GITLAB_URL=https://gitlab.com
GDAL_VERSION=$(gdal-config --version)
#ssh, docker+machine, docker-ssh+machine, kubernetes, docker, parallels, virtualbox, docker-ssh, shell
RUNNER_EXECUTOR=docker
ARCH=amd64
TAGS="CPU $(nproc), RAM: $(grep MemTotal /proc/meminfo | awk '{print $2/1024/1024}') GB, HDD $(df -P | awk 'NR>2 && /^\/dev\//{sum+=$2}END{print sum/1024/1024}') GB, docker"
if [ "${GDAL_VERSION}" == "" ];
then
	GDAL_VERSION=""
else
	GDAL_VERSION=", GDAL Version: "${GDAL_VERSION}
fi
TAGS=${TAGS}${GDAL_VERSION}
#Install
curl -LJO https://gitlab-runner-downloads.s3.amazonaws.com/latest/rpm/gitlab-runner_${ARCH}.rpm
sudo rpm -i gitlab-runner_${ARCH}.rpm
sudo rm -rf gitlab-runner_${ARCH}.rpm
#Add user
sudo adduser gitlab
#Install
sudo gitlab-runner install -user gitlab
DOCKER_FLAG=""
if [ $RUNNER_EXECUTOR = "docker" ]; then DOCKER_FLAG="alpine:latest"
fi
echo -e "${GITLAB_URL}\n${TOKEN}\n${RUNNER_NAME}\n${TAGS}\n${RUNNER_EXECUTOR}\n${DOCKER_FLAG}" | sudo gitlab-runner register --run-untagged="true"

sudo gitlab-runner start
reboot