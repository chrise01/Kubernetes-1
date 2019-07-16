#turns off auto update to stop the dpk file lock issue
#sudo systemctl disable --now apt-daily{,-upgrade}.{timer,service}
sudo apt-get autoclean
sudo apt-get update -y && sudo apt-get upgrade -y
#leave this off unless you want an OS upgrade
#sudo apt-get upgrade -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo apt install curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install kubeadm
#kubeadm version
#this turns off swapping in memory
sudo swapoff -a
#hostname - need to change for each node
sudo hostnamectl set-hostname master-node
#hostnamectl set-hostname slave-node
##Use this to start it
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
#What next?
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
#Dashboard and proxy
sudo kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta1/aio/deploy/recommended.yaml
sudo kubectl proxy
