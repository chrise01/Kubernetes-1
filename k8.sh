sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo apt install curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install kubeadm
kubeadm version
#this turns off swapping in memory
sudo swapoff -a
#hostname - need to change for each node
sudo hostnamectl set-hostname master-node
#hostnamectl set-hostname slave-node
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
#What next?
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
