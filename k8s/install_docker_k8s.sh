echo 'echo "nameserver 8.8.8.8" >> /etc/resolv.conf'
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

echo 'echo  "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.conf'
echo  "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.conf

echo 'echo  "net.bridge.bridge-nf-call-ip6tables = 1" >> /etc/sysctl.conf'
echo  "net.bridge.bridge-nf-call-ip6tables = 1" >> /etc/sysctl.conf

echo 'echo  "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf'
echo  "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

echo "systemctl daemon-reload"
systemctl daemon-reload

echo "apt-get update"
apt-get update

echo "apt-get install apt-transport-https ca-certificates curl software-properties-common -y"
apt-get install apt-transport-https ca-certificates curl software-properties-common -y

echo "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

echo "apt-key fingerprint 0EBFCD88"
apt-key fingerprint 0EBFCD88

echo 'add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"'
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo 'apt-get update'
apt-get update

echo 'apt-get install docker-ce=17.03.0~ce-0~ubuntu-xenial -y'
apt-get install docker-ce=17.03.0~ce-0~ubuntu-xenial -y

echo 'usermod -aG docker stackops'
usermod -aG docker stackops

echo "curl -s https://packages.cloud.google.com/apt/dists/kubernetes-xenial/main/binary-amd64/Packages | grep Version | awk '{print $2}'"
curl -s https://packages.cloud.google.com/apt/dists/kubernetes-xenial/main/binary-amd64/Packages | grep Version | awk '{print $2}'

echo "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - "
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - 

echo 'echo "deb http://apt.kubernetes.io/ kubernetes-xenial main"  >> /etc/apt/sources.list.d/kubernetes.list'
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main"  >> /etc/apt/sources.list.d/kubernetes.list

echo 'apt-get update '
apt-get update 

echo 'apt-get install -y kubelet=1.11.7-00 kubectl=1.11.7-00 kubeadm=1.11.7-00 kubernetes-cni=0.6.0-00'
apt-get install -y kubelet=1.11.7-00 kubectl=1.11.7-00 kubeadm=1.11.7-00 kubernetes-cni=0.6.0-00

