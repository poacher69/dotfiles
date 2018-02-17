# centos
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-edge
sudo yum install docker-ce

sudo service docker start
sudo chown `whoami`  /var/run/docker.sock
