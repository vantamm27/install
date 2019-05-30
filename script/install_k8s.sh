apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y

curl -s https://packages.cloud.google.com/apt/dists/kubernetes-xenial/main/binary-amd64/Packages | grep Version | awk '{print $2}'

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - 

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main"  >> /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update 

sudo apt-get install -y kubelet=1.11.7-00 kubectl=1.11.7-00 kubeadm=1.11.7-00 kubernetes-cni=0.6.0-00

echo  "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.conf
echo  "net.bridge.bridge-nf-call-ip6tables = 1" >> /etc/sysctl.conf
echo  "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
