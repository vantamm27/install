#1- update repo
apt-get update

#2- install tool 
apt-get install apt-transport-https ca-certificates curl software-properties-common -y

#3- add key to repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

#4- add repo 
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#5- update cache repo
apt-get update

#6- list docker  version 
apt-cache madison docker-ce

#7- install docker  with version
# select  version 17.03.0 ce 
apt-get install docker-ce=17.03.0~ce-0~ubuntu-xenial -y

#7- add uer to docker group
usermod -aG docker stackops
